import React, {
  useState,
  useRef,
  useCallback,
  useEffect,
  useMemo,
  memo,
} from "react";
import { useDebouncedCallback } from "use-debounce";
import { FormatProps } from "../props";
import {
  Utils as QbUtils,
  Query,
  Builder,
  JsonTree,
  Config,
  ImmutableTree,
  BuilderProps,
} from "@react-awesome-query-builder/ui";
import { mergeAll, equals, isNil } from "ramda";
import { StyledProps } from "./types";
import { emptyTree, emptyImmutableTree, loadNewTree } from "./utils";

const { Validation, getTree } = QbUtils;

/**
 * Type definition for the component's state
 */
type StateType = {
  immutableTree: ImmutableTree;
  config: Config;
};

/**
 * Creates formatted props from the current state and tree
 * @param state - Current state containing immutableTree and config
 * @param tree - JSON representation of the query tree
 * @returns FormatProps object with various query formats
 */
const makeProps = (state: StateType, tree: JsonTree): FormatProps => {
  return {
    sqlFormat: QbUtils.sqlFormat(state.immutableTree, state.config),
    tree,
    jsonLogicFormat: QbUtils.jsonLogicFormat(state.immutableTree, state.config)
      .logic,
    mongoDBFormat: QbUtils.mongodbFormat(state.immutableTree, state.config),
    queryString: QbUtils.queryString(state.immutableTree, state.config),
    elasticSearchFormat: QbUtils.elasticSearchFormat(
      state.immutableTree,
      state.config
    ),
    spelFormat: QbUtils.spelFormat(state.immutableTree, state.config),
  };
};

// Memoized Builder component to prevent unnecessary rerenders
const MemoizedBuilder = memo(Builder);

// Memoized Query component to prevent unnecessary rerenders
const MemoizedQuery = memo(Query);

/**
 * Custom hook for tracking previous value
 * @param value - The value to track
 * @returns The previous value
 */
function usePrevious<T>(value: T): T | undefined {
  const ref = useRef<T>();

  useEffect(() => {
    ref.current = value;
  }, [value]);

  return ref.current;
}

/**
 * Custom hook for the active element
 * @returns Functions to save and restore focus
 */
function useFocusManagement() {
  const activeElementRef = useRef<Element | null>(null);
  const selectionStartRef = useRef<number | null>(null);
  const selectionEndRef = useRef<number | null>(null);

  const saveActiveElement = useCallback(() => {
    if (document.activeElement && document.activeElement !== document.body) {
      activeElementRef.current = document.activeElement;
      if (
        activeElementRef.current instanceof HTMLInputElement ||
        activeElementRef.current instanceof HTMLTextAreaElement
      ) {
        selectionStartRef.current = activeElementRef.current.selectionStart;
        selectionEndRef.current = activeElementRef.current.selectionEnd;
      }
    }
  }, []);

  const restoreFocus = useCallback(() => {
    if (activeElementRef.current instanceof HTMLElement) {
      try {
        if (document.contains(activeElementRef.current)) {
          activeElementRef.current.focus();
          if (
            (activeElementRef.current instanceof HTMLInputElement ||
              activeElementRef.current instanceof HTMLTextAreaElement) &&
            selectionStartRef.current !== null &&
            selectionEndRef.current !== null
          ) {
            activeElementRef.current.selectionStart = selectionStartRef.current;
            activeElementRef.current.selectionEnd = selectionEndRef.current;
          }
        }
      } catch (error) {
        console.error("Error restoring focus:", error);
      }
    }
  }, []);

  return { saveActiveElement, restoreFocus };
}

/**
 * Track if the user is currently typing to prevent focus-breaking updates
 */
function useTypingTracker() {
  const isTypingRef = useRef(false);
  const typingTimerRef = useRef<NodeJS.Timeout | null>(null);

  const startTyping = useCallback(() => {
    isTypingRef.current = true;

    // Clear any existing timer
    if (typingTimerRef.current) {
      clearTimeout(typingTimerRef.current);
    }

    // Set a new timer to end typing mode after 500ms of inactivity
    typingTimerRef.current = setTimeout(() => {
      isTypingRef.current = false;
    }, 500);
  }, []);

  const isTyping = useCallback(() => {
    return isTypingRef.current;
  }, []);

  return { startTyping, isTyping };
}

/**
 * BaseBuilder component for creating query builder interfaces
 * @param props - StyledProps containing configuration and callbacks
 */
const BaseBuilder = (props: StyledProps) => {
  const {
    id,
    loadFormat,
    fields,
    config,
    dynamic,
    clear,
    debounceTime,
    setProps,
    jsonLogicFormat,
    alwaysShowActionButtons,
    styleConfig,
  } = props;

  // Track previous props for comparison
  const prevJsonLogicFormat = usePrevious(jsonLogicFormat);
  const prevLoadFormat = usePrevious(loadFormat);
  const prevFields = usePrevious(fields);
  const prevDynamic = usePrevious(dynamic);

  // Initialize configuration
  const initialConfig: Config = useMemo(
    () => mergeAll([styleConfig, config])!,
    [styleConfig, config]
  );

  const completeConfig = useMemo(
    () => ({ ...initialConfig, fields }),
    [initialConfig, fields]
  );

  const initialLoadItem = useMemo(
    () => props[loadFormat] || emptyTree,
    [props, loadFormat]
  );

  // Initialize state
  const [state, setState] = useState<StateType>(() => {
    let immutableTree: ImmutableTree;
    try {
      immutableTree = loadNewTree(loadFormat, initialLoadItem, completeConfig);
    } catch (error) {
      console.error("Error initializing tree:", error);
      immutableTree = emptyImmutableTree;
    }
    return { immutableTree, config: completeConfig };
  });

  // Track if an instant update is needed
  const [instant, setInstant] = useState(false);

  // Track if we need to force an update (for non-dynamic mode)
  const [forceUpdate, setForceUpdate] = useState(false);

  // Flag to track if we need to update after debounce
  const pendingUpdateRef = useRef(false);

  // Flag to track if we need to immediately send a query
  const needsImmediateQueryRef = useRef(false);

  // Use focus management hooks
  const { saveActiveElement, restoreFocus } = useFocusManagement();

  // Use typing tracker to prevent updates during typing
  const { startTyping, isTyping } = useTypingTracker();

  // References to current state values for use in callbacks
  const immutableTreeRef = useRef(state.immutableTree);
  const configRef = useRef(state.config);
  const stateRef = useRef(state);

  // Update refs when state changes
  useEffect(() => {
    immutableTreeRef.current = state.immutableTree;
    configRef.current = state.config;
    stateRef.current = state;

    // If we need to immediately send a query after a state update
    if (needsImmediateQueryRef.current) {
      needsImmediateQueryRef.current = false;
      // Use timeout to ensure the state is fully updated before sending the query
      setTimeout(() => {
        sendQueryRef.current();
      }, 0);
    }
  }, [state]);

  // Handle clear prop changes
  useEffect(() => {
    // Only process when clear is true
    if (!clear) {
      return;
    }

    console.log("Clearing tree state");

    // Clear the tree regardless of previous state
    setState((prevState) => ({
      config: { ...prevState.config, clear: false },
      immutableTree: emptyImmutableTree,
    }));

    // Explicitly reset refs to ensure clean state
    immutableTreeRef.current = emptyImmutableTree;

    // Reset any pending operations
    pendingUpdateRef.current = false;
    needsImmediateQueryRef.current = true; // Force immediate update after clearing

    // Notify parent that clear has been processed by setting clear back to false
    if (setProps) {
      // Also update all outputs with the empty state
      const emptyTreeJsonLogic = QbUtils.jsonLogicFormat(
        emptyImmutableTree,
        configRef.current
      ).logic;
      setProps({
        clear: false,
        sqlFormat: "",
        jsonLogicFormat: emptyTreeJsonLogic,
        tree: emptyTree,
      });
    }
  }, [clear, setProps]);

  // Combine handling of both loadFormat and jsonLogicFormat changes
  useEffect(() => {
    // Track if we need to load new data
    let shouldLoadTree = false;
    let sourceFormat = loadFormat; // Initialize with current loadFormat to get correct type
    let sourceData = null;

    // Add debug logs to track state when effect runs
    console.log("Load/format effect triggered:", {
      loadFormat,
      prevLoadFormat,
      jsonLogicFormat,
      prevJsonLogicFormat,
      treeIsEmpty: equals(immutableTreeRef.current, emptyImmutableTree),
    });

    // Case 1: loadFormat has changed - this happens when Load button is pressed
    if (loadFormat !== prevLoadFormat) {
      if (loadFormat === "jsonLogicFormat") {
        shouldLoadTree = true;
        // Always use jsonLogicFormat even if it's an empty object
        // This ensures loading works even when sqlFormat is empty
        sourceData = jsonLogicFormat || {};
        console.log("Loading data after loadFormat change:", {
          loadFormat,
          sourceData,
        });
      }
    }
    // Case 2: jsonLogicFormat has changed but loadFormat didn't
    else if (
      loadFormat === "jsonLogicFormat" &&
      !equals(jsonLogicFormat, prevJsonLogicFormat)
    ) {
      // Removed the isNil checks to allow loading even when jsonLogicFormat is null/undefined
      shouldLoadTree = true;
      sourceData = jsonLogicFormat || {}; // Ensure we have at least an empty object
      console.log("Loading data after jsonLogicFormat change:", { sourceData });
    }

    // Proceed with loading if needed - NOTE: we now check only shouldLoadTree
    if (shouldLoadTree) {
      try {
        // Save focus before loading (always, not just in dynamic mode)
        saveActiveElement();

        // Log the loading attempt and source data
        console.log("Attempting to load tree with:", {
          sourceFormat,
          sourceData,
        });

        // Use the improved loadNewTree function
        const newTree = loadNewTree(
          sourceFormat,
          sourceData || {}, // Ensure we at least pass an empty object, not null
          stateRef.current.config
        );

        // Skip update if tree is equivalent - but still proceed if both are empty trees
        // This ensures loading works even after clearing
        const isEmptyTree = equals(
          immutableTreeRef.current,
          emptyImmutableTree
        );
        if (!equals(stateRef.current.immutableTree, newTree) || isEmptyTree) {
          // Update the state with the new tree
          setState((prevState) => ({
            ...prevState,
            immutableTree: newTree,
          }));

          // Always force an immediate update after loading
          // This ensures the output is updated in both dynamic and non-dynamic modes
          needsImmediateQueryRef.current = true;

          // In non-dynamic mode, also set forceUpdate
          if (!dynamic) {
            setForceUpdate(true);
          }

          console.log("Tree updated successfully");
        } else {
          console.log("Tree unchanged - no update needed");
        }

        // Restore focus after state updates (with a delay for React to process the state change)
        setTimeout(restoreFocus, 10);
      } catch (error) {
        console.error(`Error loading ${sourceFormat}:`, error);
      }
    }
  }, [
    loadFormat,
    prevLoadFormat,
    jsonLogicFormat,
    prevJsonLogicFormat,
    dynamic,
    saveActiveElement,
    restoreFocus,
  ]);

  // Send query function - updated to better handle updates when loading
  const sendQuery = useCallback(() => {
    try {
      // Don't update if user is actively typing (but still update if we're loading data)
      if (dynamic && isTyping() && !needsImmediateQueryRef.current) {
        // Schedule another attempt after a delay
        pendingUpdateRef.current = true;
        return;
      }

      const { fixedTree, nonFixedErrors } = Validation.sanitizeTree(
        immutableTreeRef.current,
        configRef.current
      );

      if (nonFixedErrors.length) {
        console.error("Validation errors", nonFixedErrors);
        return;
      }

      // Only save focus in dynamic mode and not during immediate updates
      if (dynamic && !needsImmediateQueryRef.current) {
        saveActiveElement();
      }

      const tree = getTree(fixedTree);
      const formattedProps = makeProps(
        {
          immutableTree: immutableTreeRef.current,
          config: configRef.current,
        },
        tree
      );

      // Set all the props with current tree state
      setProps(formattedProps);

      // Only restore focus in dynamic mode and not during immediate updates
      if (dynamic && !needsImmediateQueryRef.current) {
        setTimeout(restoreFocus, 0);
      }
    } catch (error) {
      console.error("Error sending query:", error);
    }
  }, [setProps, dynamic, saveActiveElement, restoreFocus, isTyping]);

  // Keep reference to latest sendQuery function
  const sendQueryRef = useRef(sendQuery);

  // Update sendQueryRef when sendQuery changes
  useEffect(() => {
    sendQueryRef.current = sendQuery;
  }, [sendQuery]);

  // Create debounced version of sendQuery
  const debouncedSendQuery = useDebouncedCallback(
    () => {
      // Always send updates when the debounce period is over
      if (pendingUpdateRef.current || dynamic) {
        pendingUpdateRef.current = false;
        sendQueryRef.current();
      }
    },
    // Use a longer debounce time for better typing experience
    Math.max(debounceTime || 300, 500)
  );

  // Handle field changes with deep comparison
  useEffect(() => {
    // Skip on first render
    if (isNil(prevFields)) {
      return;
    }

    // Skip if fields haven't changed (deep comparison)
    if (equals(fields, prevFields)) {
      return;
    }

    setState((prevState) => ({
      immutableTree: prevState.immutableTree,
      config: { ...prevState.config, fields },
    }));
  }, [fields, prevFields]);

  // Handle DOM events for the whole component
  useEffect(() => {
    // Skip if id is undefined
    if (!id) return;

    const containerElement = document.getElementById(id);

    if (!containerElement) return;

    // Track typing events
    const handleInputEvent = () => {
      if (dynamic) {
        startTyping();
      }
    };

    // Add event listeners to track user typing
    containerElement.addEventListener("input", handleInputEvent);

    return () => {
      containerElement.removeEventListener("input", handleInputEvent);
    };
  }, [id, dynamic, startTyping]);

  // Handle tree changes - memoized with proper dependencies
  const onChange = useCallback(
    (immutableTree: ImmutableTree, config: Config) => {
      setState((prevState) => {
        // Skip update if no actual change (deep comparison)
        if (
          equals(prevState.immutableTree, immutableTree) &&
          equals(prevState.config, config)
        ) {
          return prevState;
        }

        // Mark that we need to update after the debounce period
        if (dynamic) {
          pendingUpdateRef.current = true;
          // Trigger the debounced update
          debouncedSendQuery();
        }

        return { immutableTree, config };
      });
    },
    [dynamic, debouncedSendQuery]
  );

  // Handle dynamic mode changes
  useEffect(() => {
    // Skip on first render
    if (isNil(prevDynamic)) {
      return;
    }

    // If dynamic mode changed, trigger appropriate behavior
    if (dynamic !== prevDynamic && dynamic) {
      sendQueryRef.current();
    }
  }, [dynamic, prevDynamic]);

  // Auto-send query when in dynamic mode or when forced
  useEffect(() => {
    if (!dynamic && !forceUpdate) return;

    if (instant || forceUpdate) {
      debouncedSendQuery.cancel();
      sendQueryRef.current();
      setInstant(false);
      setForceUpdate(false);
    }
  }, [dynamic, instant, forceUpdate, debouncedSendQuery]);

  // Handle save operations - improved to use the current tree state
  const handleSave = useCallback(() => {
    try {
      // Get the current tree with proper validation
      const { fixedTree, nonFixedErrors } = Validation.sanitizeTree(
        immutableTreeRef.current,
        configRef.current
      );

      // Check for validation errors
      if (nonFixedErrors.length > 0) {
        console.warn("Non-critical validation issues:", nonFixedErrors);
      }

      // Get JSON representation and create formatted props
      const tree = getTree(fixedTree);
      const currentProps = makeProps(
        {
          immutableTree: fixedTree,
          config: configRef.current,
        },
        tree
      );

      // Update all outputs
      setProps(currentProps);
    } catch (error) {
      console.error("Error saving query:", error);
    }
  }, [setProps]);

  // Handle search button click
  const handleSearchClick = useCallback(() => {
    // Use the save handler to ensure we get the latest tree state
    handleSave();
  }, [handleSave]);

  // Memoize search button to prevent unnecessary rerenders
  const SearchButton = useMemo(() => {
    if (dynamic) return null;

    return (
      <button
        type="button"
        onClick={handleSearchClick}
        aria-label="Execute search query">
        Search
      </button>
    );
  }, [dynamic, handleSearchClick]);

  // Render builder component - memoized with proper dependencies
  const renderBuilder = useCallback(
    (props: BuilderProps) => (
      <div className="query-builder-container">
        <div
          className={
            "query-builder " + (!alwaysShowActionButtons ? "qb-lite" : "")
          }>
          <MemoizedBuilder {...props} />
          {SearchButton}
        </div>
      </div>
    ),
    [alwaysShowActionButtons, SearchButton]
  );

  // Handle keyboard events - memoized with empty deps array since it uses refs
  const handleKeyDown = useCallback(
    (event: React.KeyboardEvent) => {
      if (event.key === "Enter") {
        handleSave();
      }
    },
    [handleSave]
  );

  // Memoize Query props to prevent unnecessary rerenders
  const queryProps = useMemo(
    () => ({
      ...state.config,
      value: state.immutableTree,
      onChange,
      renderBuilder,
    }),
    [state.config, state.immutableTree, onChange, renderBuilder]
  );

  // Memoize the container props
  const containerProps = useMemo(
    () => ({
      id,
      role: "search",
      tabIndex: 0,
      "aria-label": "Query builder",
      onKeyDown: handleKeyDown,
    }),
    [id, handleKeyDown]
  );

  return (
    <div {...containerProps}>
      <MemoizedQuery {...queryProps} />
    </div>
  );
};

// Use React.memo with custom equality function to prevent unnecessary rerenders
export default memo(
  BaseBuilder,
  (prevProps: StyledProps, nextProps: StyledProps) => {
    // Only rerender if these specific props change
    const propsToCompare = [
      "id",
      "loadFormat",
      "fields",
      "config",
      "dynamic",
      "clear",
      "debounceTime",
      "jsonLogicFormat",
      "alwaysShowActionButtons",
      "styleConfig",
    ] as const;

    // Check if all important props are equal (return true if equal, false if different)
    return propsToCompare.every((prop) =>
      equals(prevProps[prop], nextProps[prop])
    );
  }
);
