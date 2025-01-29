import { useState, useRef, useCallback, useEffect, useMemo } from "react";
import React from "react";
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

// function useDidUpdateEffect(fn: Function, inputs: React.DependencyList) {
//   const isMountingRef = useRef(true);

//   // useEffect(() => {
//   //   isMountingRef.current = true;
//   // }, []);

//   useEffect(() => {
//     if (!isMountingRef.current) {
//       return fn();
//     } else {
//       isMountingRef.current = false;
//     }
//   }, inputs);
// }

/**
 * Component description
 **/
const BaseBuilder = (props: StyledProps) => {
  const {
    id,
    tree,
    loadFormat,
    fields,
    config,
    setProps,
    spelFormat,
    jsonLogicFormat,
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

  // const previousTree = useRef<JsonTree | null>(null);
  // const updateTree = useCallback(
  //   (format: loadFormatType, formatValue: string | Object) => {
  //     const newTree = loadNewTree(format, formatValue, state.config);

  //     setState((prevState) => {
  //       return { ...prevState, immutableTree: newTree };
  //     });

  //     setProps({ tree: getTree(newTree) });
  //   },
  //   [state]
  // );

  // useEffect(() => {
  //   if (loadFormat === "spelFormat" && spelFormat) {
  //     updateTree("spelFormat", spelFormat);
  //   } else if (loadFormat === "jsonLogicFormat" && jsonLogicFormat) {
  //     updateTree("jsonLogicFormat", jsonLogicFormat);
  //   }
  // }, []);
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

  const onChange = useCallback(
    (immutableTree: ImmutableTree, config: Config) => {
      setState((prevState) => {
        return { ...prevState, immutableTree, config };
      });
    },
    [setState]
  );

  const sendQueryRef = useRef(sendQuery);
  sendQueryRef.current = sendQuery;

  const renderBuilder = useCallback(
    (props: BuilderProps) => (
      <div className="query-builder-container">
        <div
          className={
            "query-builder " + (!alwaysShowActionButtons ? "qb-lite" : "")
          }>
          <Builder {...props} />
          <button onClick={() => sendQueryRef.current()}>Search</button>
        </div>
      </div>
    ),
    [alwaysShowActionButtons]
  );

  return (
    <div id={id}>
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
