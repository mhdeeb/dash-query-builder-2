import { Suspense } from "react";
import React from "react";
import { Props } from "../props";
import LazyQueryBuilder from "../fragments/LazyQueryBuilder";
import { emptyTree } from "../fragments/utils";
/**
 * The Dash Query Builder component
 */
const dash_query_builder = (props: Props) => {
  const { id } = props;

  return (
    <div id={id}>
      <Suspense fallback={<div>Loading...</div>}>
        <LazyQueryBuilder {...props} />
      </Suspense>
    </div>
  );
};

dash_query_builder.defaultProps = {
  tree: emptyTree,
  theme: "basic",
  loadFormat: "tree",
  alwaysShowActionButtons: true,
};

export default dash_query_builder;
