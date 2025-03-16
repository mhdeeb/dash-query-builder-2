import React, { useState, useRef, useCallback, useEffect } from "react";
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
} from "@react-awesome-query-builder/mui";
import { mergeAll } from "ramda";
import { StyledProps } from "./types";

const { Validation, getTree } = QbUtils;
import { emptyTree, emptyImmutableTree, loadNewTree } from "./utils";

type StateType = {
  immutableTree: ImmutableTree;
  config: Config;
};

function makeProps(state: StateType, tree: JsonTree): FormatProps {
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
}

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

  const initialConfig: Config = mergeAll([styleConfig, config])!;
  const completeConfig = { ...initialConfig, fields };
  const initialLoadItem = props[loadFormat] || emptyTree;

  const [state, setState] = useState<StateType>(() => {
    let immutableTree: ImmutableTree;
    try {
      immutableTree = loadNewTree(loadFormat, initialLoadItem, completeConfig);
    } catch {
      immutableTree = emptyImmutableTree;
    }
    return { immutableTree, config: completeConfig };
  });

  const [instant, setInstant] = useState(false);

  useEffect(() => {
    if (loadFormat === "jsonLogicFormat" && jsonLogicFormat !== undefined) {
      let newTree = loadNewTree(
        "jsonLogicFormat",
        jsonLogicFormat,
        state.config
      );

      setState((prevState) => ({
        ...prevState,
        immutableTree: newTree,
      }));

      setProps({ loadFormat: "tree" });

      setInstant(true);
    }
  }, [loadFormat]);

  const isFirstRun = useRef(true);
  useEffect(() => {
    if (isFirstRun.current) {
      isFirstRun.current = false;
      return;
    }

    setState((prevState) => {
      if (prevState.config.fields === fields) return prevState;
      return {
        immutableTree: prevState.immutableTree,
        config: { ...prevState.config, fields },
      };
    });
  }, [fields]);

  const immutableTreeRef = useRef(state.immutableTree);
  const configRef = useRef(state.config);

  useEffect(() => {
    immutableTreeRef.current = state.immutableTree;
    configRef.current = state.config;
  }, [state.immutableTree, state.config]);

  const sendQuery = useCallback(() => {
    const { fixedTree, nonFixedErrors } = Validation.sanitizeTree(
      immutableTreeRef.current,
      configRef.current
    );

    if (!nonFixedErrors.length) {
      setProps(
        makeProps(
          {
            immutableTree: immutableTreeRef.current,
            config: configRef.current,
          },
          getTree(fixedTree)
        )
      );
    } else {
      console.error("Validation errors", nonFixedErrors);
    }
  }, []);

  const sendQueryRef = useRef(sendQuery);
  sendQueryRef.current = sendQuery;

  const debouncedSendQuery = useDebouncedCallback(
    () => sendQueryRef.current(),
    debounceTime
  );

  const onChange = useCallback(
    (immutableTree: ImmutableTree, config: Config) => {
      setState((prevState) => ({ ...prevState, immutableTree, config }));
    },
    []
  );

  useEffect(() => {
    if (!dynamic) return;

    if (instant) {
      debouncedSendQuery.cancel();
      sendQueryRef.current();
      setInstant(false);
    } else {
      debouncedSendQuery();
    }
  }, [dynamic, instant, state.immutableTree]);

  useEffect(() => {
    if (clear) {
      setState((prevState) => ({
        ...prevState,
        immutableTree: emptyImmutableTree,
      }));

      setProps({ clear: false });
    }
  }, [clear]);

  const renderBuilder = useCallback(
    (props: BuilderProps) => (
      <div className="query-builder-container">
        <div
          className={
            "query-builder " + (!alwaysShowActionButtons ? "qb-lite" : "")
          }>
          <Builder {...props} />
          {!dynamic && (
            <button onClick={() => sendQueryRef.current()}>Search</button>
          )}
        </div>
      </div>
    ),
    [alwaysShowActionButtons, dynamic]
  );

  const handleKeyDown = useCallback((event: any) => {
    const ENTER_KEY = 13;

    if (event.keyCode === ENTER_KEY) sendQueryRef.current();
  }, []);

  return (
    <div id={id} onKeyDown={handleKeyDown}>
      <Query
        {...state.config}
        value={state.immutableTree}
        onChange={onChange}
        renderBuilder={renderBuilder}
      />
    </div>
  );
};

export default BaseBuilder;
