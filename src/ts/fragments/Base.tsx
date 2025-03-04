import { useState, useRef, useCallback, useEffect, useMemo } from "react";
import React from "react";
import { useDebouncedCallback } from "use-debounce";
import { FormatProps, loadFormatType } from "../props";
import {
  Utils as QbUtils,
  Query,
  Builder,
  JsonTree,
  Config,
  ImmutableTree,
  BuilderProps,
} from "@react-awesome-query-builder/ui";
import { mergeAll } from "ramda";
import { StyledProps } from "./types";

const { loadTree, Validation, getTree } = QbUtils;
import { emptyTree, emptyImmutableTree, loadNewTree } from "./utils";
import { SqlUtils } from "@react-awesome-query-builder/sql";

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
    queryBuilderFormat: QbUtils.queryBuilderFormat(
      state.immutableTree,
      state.config
    ),
  };
}

/**
 * Component description
 **/
const BaseBuilder = (props: StyledProps) => {
  const {
    id,
    loadFormat,
    fields,
    config,
    dynamic,
    debounceTime,
    setProps,
    sqlFormat,
    alwaysShowActionButtons,
    styleConfig,
  } = props;

  const initialConfig: Config = mergeAll([styleConfig, config]);
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

  const debounced = useDebouncedCallback((state) => {
    sendQueryRef.current();
  }, debounceTime);

  const onChange = useCallback(
    (immutableTree: ImmutableTree, config: Config) => {
      setState((prevState) => {
        return { ...prevState, immutableTree, config };
      });

      if (dynamic) debounced(state);
    },
    [setState, dynamic]
  );

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

  useEffect(() => {
    if (loadFormat === "sql" && sqlFormat) {
      let immutableTree: ImmutableTree;

      try {
        const {
          tree: immutableTree,
          errors,
          warnings,
        } = SqlUtils.loadFromSql(sqlFormat, completeConfig);
        if (errors.length) {
          console.error("Import errors: ", errors);
        }
        setState({ immutableTree, config: completeConfig });
        setProps({
          ...makeProps(
            { immutableTree, config: completeConfig },
            getTree(immutableTree)
          ),
          loadFormat: "tree",
        });
      } catch (e) {
        console.error("Error loading SQL format:", e);
      }
    }
  }, [loadFormat, sqlFormat]);

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
