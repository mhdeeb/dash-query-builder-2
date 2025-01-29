import BaseBuilder from "./Base";
import React from "react";
import { MaterialConfig } from "@react-awesome-query-builder/material";
import "@react-awesome-query-builder/material/css/styles.css";
import { Props } from "../props";

const MaterialQueryBuilder = (props: Props) => {
  return <BaseBuilder {...props} styleConfig={MaterialConfig} />;
};

export default MaterialQueryBuilder;
