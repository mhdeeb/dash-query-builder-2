import { loadFormatType } from "../props";
import {
  Utils,
  JsonTree,
  Config,
  ImmutableTree,
} from "@react-awesome-query-builder/ui";
import "@react-awesome-query-builder/ui/css/styles.css";
import { isEmpty, isNil } from "ramda";
const { loadTree, _loadFromJsonLogic, loadFromSpel, Validation } = Utils;

/**
 * Default empty tree structure
 * This serves as a fallback when loading fails or when initializing a new query builder
 */
export const emptyTree: JsonTree = {
  id: Utils.uuid(),
  type: "group",
  children1: [],
};

/**
 * Default empty immutable tree instance
 * Immutable version of emptyTree that can be used directly in the query builder
 */
export const emptyImmutableTree: ImmutableTree = loadTree(emptyTree);

/**
 * Type guard to check if an object is a valid JsonTree
 * @param tree - The object to check
 * @returns True if the object has the structure of a JsonTree
 */
function isJsonTree(tree: any): tree is JsonTree {
  if (!tree || typeof tree !== "object") return false;
  return (
    (tree.type === "group" || tree.type === "switch_group") &&
    !isNil(tree.id) &&
    Array.isArray(tree.children1)
  );
}

/**
 * Type guard to check if an object is a valid JsonLogic object
 * @param obj - The object to check
 * @returns True if the object has the structure of a JsonLogic object
 */
function isValidJsonLogic(obj: any): boolean {
  if (!obj || typeof obj !== "object") return false;
  // Basic validation - JsonLogic should have at least one operator property
  return Object.keys(obj).length > 0;
}

/**
 * Handles loading a tree from SPEL format
 */
function loadFromSpelFormat(loadItem: any, config: Config): ImmutableTree {
  if (typeof loadItem !== "string") {
    console.error(
      "SPEL format requires string input, received:",
      typeof loadItem
    );
    return loadTree(emptyTree);
  }

  const [spelTree, spelError] = loadFromSpel(loadItem, config);

  if (spelError && spelError.length > 0) {
    console.error("Errors loading SPEL format:", spelError);
    throw new Error("Failed to load SPEL format: " + spelError.join(", "));
  }

  if (!spelTree) {
    console.error("SPEL format loading returned null tree");
    return loadTree(emptyTree);
  }

  return spelTree;
}

/**
 * Handles loading a tree from JsonLogic format
 */
function loadFromJsonLogicFormat(loadItem: any, config: Config): ImmutableTree {
  if (typeof loadItem !== "object") {
    console.error(
      "JsonLogic format requires object input, received:",
      typeof loadItem
    );
    throw new Error("JsonLogic format requires object input");
  }

  if (isEmpty(loadItem)) {
    console.warn("Empty JsonLogic object provided, using empty tree");
    return loadTree(emptyTree);
  }

  if (!isValidJsonLogic(loadItem)) {
    console.error("Invalid JsonLogic structure:", loadItem);
    throw new Error("Invalid JsonLogic structure");
  }

  const [jsonLogicTree, jsonLogicError] = _loadFromJsonLogic(loadItem, config);

  if (jsonLogicError && jsonLogicError.length > 0) {
    console.error("Errors loading JsonLogic format:", jsonLogicError);
    throw new Error(
      "Failed to load JsonLogic format: " + jsonLogicError.join(", ")
    );
  }

  if (!jsonLogicTree) {
    console.error("JsonLogic format loading returned null tree");
    return loadTree(emptyTree);
  }

  return jsonLogicTree;
}

/**
 * Handles loading a tree from Tree format
 */
function loadFromTreeFormat(loadItem: any, config: Config): ImmutableTree {
  if (!isJsonTree(loadItem)) {
    console.error("Invalid tree structure:", loadItem);
    throw new Error("Tree format requires valid JsonTree input");
  }

  const loadedTree = loadTree(loadItem);
  const { fixedTree, nonFixedErrors } = Validation.sanitizeTree(
    loadedTree,
    config
  );

  if (nonFixedErrors && nonFixedErrors.length > 0) {
    console.warn("Non-critical issues in tree structure:", nonFixedErrors);
  }

  return fixedTree;
}

/**
 * Sanitizes and loads a tree from a format into an ImmutableTree
 * Handles errors gracefully and provides consistent behavior across formats
 *
 * @param load_format - The format to load from ('spelFormat', 'jsonLogicFormat', or 'tree')
 * @param loadItem - The data to load, either a string or an object depending on the format
 * @param config - The configuration for the query builder
 * @returns An ImmutableTree instance that can be used in the query builder
 * @throws Error if the data cannot be loaded
 */
export const loadNewTree = (
  load_format: loadFormatType,
  loadItem: any,
  config: Config
): ImmutableTree => {
  try {
    if (isNil(loadItem)) {
      console.warn(
        `Attempted to load undefined or null data with format ${load_format}`
      );
      return loadTree(emptyTree);
    }

    switch (load_format) {
      case "spelFormat":
        return loadFromSpelFormat(loadItem, config);
      case "jsonLogicFormat":
        return loadFromJsonLogicFormat(loadItem, config);
      case "tree":
        return loadFromTreeFormat(loadItem, config);
      default:
        console.error(`Unknown load format: ${load_format}`);
        return loadTree(emptyTree);
    }
  } catch (error) {
    console.error(`Error loading tree with format ${load_format}:`, error);

    if (error instanceof Error) {
      throw new Error(`Failed to load query: ${error.message}`);
    } else {
      throw new Error(`Failed to load query: Unknown error`);
    }
  }
};

/**
 * Converts an ImmutableTree to a JSON representation that can be saved
 *
 * @param tree - The ImmutableTree to convert
 * @param config - The configuration for the query builder
 * @returns The JSON representation of the tree in the requested format
 */
export const convertTreeToJson = (
  tree: ImmutableTree,
  config: Config
): JsonTree => {
  return Utils.getTree(tree);
};
