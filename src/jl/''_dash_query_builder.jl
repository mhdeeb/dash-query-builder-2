# AUTO GENERATED FILE - DO NOT EDIT

export ''_dash_query_builder

"""
    ''_dash_query_builder(;kwargs...)

A dash_query_builder component.
The Dash Query Builder component
Keyword arguments:
- `id` (String; optional): Unique ID to identify this component in Dash callbacks.
- `alwaysShowActionButtons` (Bool; optional): Whether to show action buttons all the time or just on hover
- `config` (optional): The config object. See the [Config](https://github.com/ukrbublik/react-awesome-query-builder/blob/master/CONFIG.adoc docs).. config has the following type: lists containing elements 'settings', 'operators', 'widgets', 'conjunctions', 'types', 'fields', 'funcs', 'ctx'.
Those elements have the following types:
  - `settings` (required): . settings has the following type: lists containing elements 'locale', 'theme', 'valueLabel', 'valuePlaceholder', 'fieldLabel', 'operatorLabel', 'fieldPlaceholder', 'funcPlaceholder', 'funcLabel', 'operatorPlaceholder', 'lockLabel', 'lockedLabel', 'deleteLabel', 'addGroupLabel', 'addCaseLabel', 'addDefaultCaseLabel', 'defaultCaseLabel', 'addRuleLabel', 'addSubRuleLabel', 'addSubGroupLabel', 'delGroupLabel', 'notLabel', 'fieldSourcesPopupTitle', 'valueSourcesPopupTitle', 'removeRuleConfirmOptions', 'removeGroupConfirmOptions', 'loadMoreLabel', 'loadingMoreLabel', 'typeToSearchLabel', 'loadingLabel', 'notFoundLabel', 'reverseOperatorsForNot', 'canShortMongoQuery', 'defaultField', 'defaultOperator', 'defaultConjunction', 'fieldSources', 'valueSourcesInfo', 'canCompareFieldWithField', 'canReorder', 'canRegroup', 'canRegroupCases', 'showNot', 'showLock', 'canDeleteLocked', 'maxNesting', 'setOpOnChangeField', 'clearValueOnChangeField', 'clearValueOnChangeOp', 'canLeaveEmptyGroup', 'canLeaveEmptyCase', 'shouldCreateEmptyGroup', 'forceShowConj', 'immutableGroupsMode', 'immutableFieldsMode', 'immutableOpsMode', 'immutableValuesMode', 'maxNumberOfRules', 'maxNumberOfCases', 'showErrorMessage', 'convertableWidgets', 'exportPreserveGroups', 'removeEmptyGroupsOnLoad', 'removeEmptyRulesOnLoad', 'removeIncompleteRulesOnLoad', 'removeInvalidMultiSelectValuesOnLoad', 'groupOperators', 'useConfigCompress', 'keepInputOnChangeFieldSrc', 'fieldItemKeysForSearch', 'listKeysForSearch', 'sqlDialect', 'caseValueField', 'fieldSeparator', 'fieldSeparatorDisplay', 'formatReverse', 'sqlFormatReverse', 'spelFormatReverse', 'formatField', 'formatSpelField', 'formatAggr', 'renderField', 'renderOperator', 'renderFunc', 'renderConjs', 'renderButton', 'renderIcon', 'renderButtonGroup', 'renderSwitch', 'renderProvider', 'renderValueSources', 'renderFieldSources', 'renderConfirm', 'useConfirm', 'renderSize', 'renderItem', 'dropdownPlacement', 'groupActionsPosition', 'showLabels', 'maxLabelsLength', 'customFieldSelectProps', 'customOperatorSelectProps', 'renderBeforeWidget', 'renderAfterWidget', 'renderBeforeActions', 'renderAfterActions', 'renderBeforeCaseValue', 'renderAfterCaseValue', 'renderRuleError', 'renderSwitchPrefix', 'defaultSliderWidth', 'defaultSelectWidth', 'defaultSearchWidth', 'defaultMaxRows'.
Those elements have the following types:
  - `locale` (optional): . locale has the following type: lists containing elements 'moment', 'antd', 'material', 'mui'.
Those elements have the following types:
  - `moment` (String; optional)
  - `antd` (optional): . antd has the following type: lists containing elements 'constructor', 'toString', 'toLocaleString', 'valueOf', 'hasOwnProperty', 'isPrototypeOf', 'propertyIsEnumerable'.
Those elements have the following types:
  - `constructor` (optional): The initial value of Object.prototype.constructor is the standard built-in Object constructor.
  - `toString` (optional): Returns a string representation of an object.
  - `toLocaleString` (optional): Returns a date converted to a string using the current locale.
  - `valueOf` (optional): Returns the primitive value of the specified object.
  - `hasOwnProperty` (optional): Determines whether an object has a property with the specified name.
@,param,v, ,A property name.
  - `isPrototypeOf` (optional): Determines whether an object exists in another object's prototype chain.
@,param,v, ,Another object whose prototype chain is to be checked.
  - `propertyIsEnumerable` (optional): Determines whether a specified property is enumerable.
@,param,v, ,A property name.
  - `material` (optional): . material has the following type: lists containing elements 'constructor', 'toString', 'toLocaleString', 'valueOf', 'hasOwnProperty', 'isPrototypeOf', 'propertyIsEnumerable'.
Those elements have the following types:
  - `constructor` (optional): The initial value of Object.prototype.constructor is the standard built-in Object constructor.
  - `toString` (optional): Returns a string representation of an object.
  - `toLocaleString` (optional): Returns a date converted to a string using the current locale.
  - `valueOf` (optional): Returns the primitive value of the specified object.
  - `hasOwnProperty` (optional): Determines whether an object has a property with the specified name.
@,param,v, ,A property name.
  - `isPrototypeOf` (optional): Determines whether an object exists in another object's prototype chain.
@,param,v, ,Another object whose prototype chain is to be checked.
  - `propertyIsEnumerable` (optional): Determines whether a specified property is enumerable.
@,param,v, ,A property name.
  - `mui` (optional): . mui has the following type: lists containing elements 'constructor', 'toString', 'toLocaleString', 'valueOf', 'hasOwnProperty', 'isPrototypeOf', 'propertyIsEnumerable'.
Those elements have the following types:
  - `constructor` (optional): The initial value of Object.prototype.constructor is the standard built-in Object constructor.
  - `toString` (optional): Returns a string representation of an object.
  - `toLocaleString` (optional): Returns a date converted to a string using the current locale.
  - `valueOf` (optional): Returns the primitive value of the specified object.
  - `hasOwnProperty` (optional): Determines whether an object has a property with the specified name.
@,param,v, ,A property name.
  - `isPrototypeOf` (optional): Determines whether an object exists in another object's prototype chain.
@,param,v, ,Another object whose prototype chain is to be checked.
  - `propertyIsEnumerable` (optional): Determines whether a specified property is enumerable.
@,param,v, ,A property name.
  - `theme` (optional): . theme has the following type: lists containing elements 'material', 'mui'.
Those elements have the following types:
  - `material` (optional): . material has the following type: lists containing elements 'constructor', 'toString', 'toLocaleString', 'valueOf', 'hasOwnProperty', 'isPrototypeOf', 'propertyIsEnumerable'.
Those elements have the following types:
  - `constructor` (optional): The initial value of Object.prototype.constructor is the standard built-in Object constructor.
  - `toString` (optional): Returns a string representation of an object.
  - `toLocaleString` (optional): Returns a date converted to a string using the current locale.
  - `valueOf` (optional): Returns the primitive value of the specified object.
  - `hasOwnProperty` (optional): Determines whether an object has a property with the specified name.
@,param,v, ,A property name.
  - `isPrototypeOf` (optional): Determines whether an object exists in another object's prototype chain.
@,param,v, ,Another object whose prototype chain is to be checked.
  - `propertyIsEnumerable` (optional): Determines whether a specified property is enumerable.
@,param,v, ,A property name.
  - `mui` (optional): . mui has the following type: lists containing elements 'constructor', 'toString', 'toLocaleString', 'valueOf', 'hasOwnProperty', 'isPrototypeOf', 'propertyIsEnumerable'.
Those elements have the following types:
  - `constructor` (optional): The initial value of Object.prototype.constructor is the standard built-in Object constructor.
  - `toString` (optional): Returns a string representation of an object.
  - `toLocaleString` (optional): Returns a date converted to a string using the current locale.
  - `valueOf` (optional): Returns the primitive value of the specified object.
  - `hasOwnProperty` (optional): Determines whether an object has a property with the specified name.
@,param,v, ,A property name.
  - `isPrototypeOf` (optional): Determines whether an object exists in another object's prototype chain.
@,param,v, ,Another object whose prototype chain is to be checked.
  - `propertyIsEnumerable` (optional): Determines whether a specified property is enumerable.
@,param,v, ,A property name.
  - `valueLabel` (String; optional)
  - `valuePlaceholder` (String; optional)
  - `fieldLabel` (String; optional)
  - `operatorLabel` (String; optional)
  - `fieldPlaceholder` (String; optional)
  - `funcPlaceholder` (String; optional)
  - `funcLabel` (String; optional)
  - `operatorPlaceholder` (String; optional)
  - `lockLabel` (String; optional)
  - `lockedLabel` (String; optional)
  - `deleteLabel` (String; optional)
  - `addGroupLabel` (String; optional)
  - `addCaseLabel` (String; optional)
  - `addDefaultCaseLabel` (String; optional)
  - `defaultCaseLabel` (String; optional)
  - `addRuleLabel` (String; optional)
  - `addSubRuleLabel` (String; optional)
  - `addSubGroupLabel` (String; optional)
  - `delGroupLabel` (String; optional)
  - `notLabel` (String; optional)
  - `fieldSourcesPopupTitle` (String; optional)
  - `valueSourcesPopupTitle` (String; optional)
  - `removeRuleConfirmOptions` (optional): . removeRuleConfirmOptions has the following type: lists containing elements 'title', 'okText', 'okType', 'cancelText'.
Those elements have the following types:
  - `title` (String; optional)
  - `okText` (String; optional)
  - `okType` (String; optional)
  - `cancelText` (String; optional)
  - `removeGroupConfirmOptions` (optional): . removeGroupConfirmOptions has the following type: lists containing elements 'title', 'okText', 'okType', 'cancelText'.
Those elements have the following types:
  - `title` (String; optional)
  - `okText` (String; optional)
  - `okType` (String; optional)
  - `cancelText` (String; optional)
  - `loadMoreLabel` (String; optional)
  - `loadingMoreLabel` (String; optional)
  - `typeToSearchLabel` (String; optional)
  - `loadingLabel` (String; optional)
  - `notFoundLabel` (String; optional)
  - `reverseOperatorsForNot` (Bool; optional)
  - `canShortMongoQuery` (Bool; optional)
  - `defaultField` (String; optional)
  - `defaultOperator` (String; optional)
  - `defaultConjunction` (String; optional)
  - `fieldSources` (Array of a value equal to: 'field', 'func's; optional)
  - `valueSourcesInfo` (optional): . valueSourcesInfo has the following type: lists containing elements 'field', 'func', 'value', 'const'.
Those elements have the following types:
  - `field` (optional): . field has the following type: lists containing elements 'label', 'widget'.
Those elements have the following types:
  - `label` (String; required)
  - `widget` (String; optional)
  - `func` (optional): . func has the following type: lists containing elements 'label', 'widget'.
Those elements have the following types:
  - `label` (String; required)
  - `widget` (String; optional)
  - `value` (optional): . value has the following type: lists containing elements 'label', 'widget'.
Those elements have the following types:
  - `label` (String; required)
  - `widget` (String; optional)
  - `const` (optional): . const has the following type: lists containing elements 'label', 'widget'.
Those elements have the following types:
  - `label` (String; required)
  - `widget` (String; optional)
  - `canCompareFieldWithField` (optional): . canCompareFieldWithField has the following type: lists containing elements .
Those elements have the following types:

  - `canReorder` (Bool; optional)
  - `canRegroup` (Bool; optional)
  - `canRegroupCases` (Bool; optional)
  - `showNot` (Bool; optional)
  - `showLock` (Bool; optional)
  - `canDeleteLocked` (Bool; optional)
  - `maxNesting` (Real; optional)
  - `setOpOnChangeField` (Array of a value equal to: 'default', 'keep', 'first', 'none's; required)
  - `clearValueOnChangeField` (Bool; optional)
  - `clearValueOnChangeOp` (Bool; optional)
  - `canLeaveEmptyGroup` (Bool; optional)
  - `canLeaveEmptyCase` (Bool; optional)
  - `shouldCreateEmptyGroup` (Bool; optional)
  - `forceShowConj` (Bool; optional)
  - `immutableGroupsMode` (Bool; optional)
  - `immutableFieldsMode` (Bool; optional)
  - `immutableOpsMode` (Bool; optional)
  - `immutableValuesMode` (Bool; optional)
  - `maxNumberOfRules` (optional): . maxNumberOfRules has the following type: lists containing elements 'toString', 'toFixed', 'toExponential', 'toPrecision', 'valueOf', 'toLocaleString'.
Those elements have the following types:
  - `toString` (optional): Returns a string representation of an object.
@,param,radix, ,Specifies a radix for converting numeric values to strings. This value is only used for numbers.
  - `toFixed` (required): Returns a string representing a number in fixed-point notation.
@,param,fractionDigits, ,Number of digits after the decimal point. Must be in the range 0 - 20, inclusive.
  - `toExponential` (required): Returns a string containing a number represented in exponential notation.
@,param,fractionDigits, ,Number of digits after the decimal point. Must be in the range 0 - 20, inclusive.
  - `toPrecision` (required): Returns a string containing a number represented either in exponential or fixed-point notation with a specified number of digits.
@,param,precision, ,Number of significant digits. Must be in the range 1 - 21, inclusive.
  - `valueOf` (optional): Returns the primitive value of the specified object.
  - `toLocaleString` (optional): Converts a number to a string by using the current or specified locale.
@,param,locales, ,A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
@,param,options, ,An object that contains one or more properties that specify comparison options.
@,param,locales, ,A locale string, array of locale strings, Intl.Locale object, or array of Intl.Locale objects that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
@,param,options, ,An object that contains one or more properties that specify comparison options.. toLocaleString has the following type: lists containing elements .
Those elements have the following types:

  - `maxNumberOfCases` (optional): . maxNumberOfCases has the following type: lists containing elements 'toString', 'toFixed', 'toExponential', 'toPrecision', 'valueOf', 'toLocaleString'.
Those elements have the following types:
  - `toString` (optional): Returns a string representation of an object.
@,param,radix, ,Specifies a radix for converting numeric values to strings. This value is only used for numbers.
  - `toFixed` (required): Returns a string representing a number in fixed-point notation.
@,param,fractionDigits, ,Number of digits after the decimal point. Must be in the range 0 - 20, inclusive.
  - `toExponential` (required): Returns a string containing a number represented in exponential notation.
@,param,fractionDigits, ,Number of digits after the decimal point. Must be in the range 0 - 20, inclusive.
  - `toPrecision` (required): Returns a string containing a number represented either in exponential or fixed-point notation with a specified number of digits.
@,param,precision, ,Number of significant digits. Must be in the range 1 - 21, inclusive.
  - `valueOf` (optional): Returns the primitive value of the specified object.
  - `toLocaleString` (optional): Converts a number to a string by using the current or specified locale.
@,param,locales, ,A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
@,param,options, ,An object that contains one or more properties that specify comparison options.
@,param,locales, ,A locale string, array of locale strings, Intl.Locale object, or array of Intl.Locale objects that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
@,param,options, ,An object that contains one or more properties that specify comparison options.. toLocaleString has the following type: lists containing elements .
Those elements have the following types:

  - `showErrorMessage` (Bool; optional)
  - `convertableWidgets` (Dict with Strings as keys and values of type Array of Strings; optional)
  - `exportPreserveGroups` (Bool; optional)
  - `removeEmptyGroupsOnLoad` (Bool; optional)
  - `removeEmptyRulesOnLoad` (Bool; optional)
  - `removeIncompleteRulesOnLoad` (Bool; optional)
  - `removeInvalidMultiSelectValuesOnLoad` (Bool; optional)
  - `groupOperators` (Array of Strings; optional)
  - `useConfigCompress` (Bool; optional)
  - `keepInputOnChangeFieldSrc` (Bool; optional)
  - `fieldItemKeysForSearch` (Array of a value equal to: 'key', 'path', 'label', 'altLabel', 'tooltip', 'grouplabel's; optional)
  - `listKeysForSearch` (Array of a value equal to: 'value', 'title', 'groupTitle's; optional)
  - `sqlDialect` (a value equal to: 'BigQuery', 'PostgreSQL', 'MySQL'; optional)
  - `caseValueField` (optional): . caseValueField has the following type: lists containing elements 'label2', 'operators', 'defaultOperator', 'excludeOperators', 'type', 'preferWidgets', 'valueSources', 'funcs', 'tableName', 'fieldName', 'jsonLogicVar', 'fieldSettings', 'defaultValue', 'widgets', 'mainWidgetProps', 'hideForSelect', 'hideForCompare', 'listValues', 'allowCustomValues', 'isSpelVariable', 'label', 'tooltip'.
Those elements have the following types:
  - `label2` (String; optional)
  - `operators` (Array of Strings; optional)
  - `defaultOperator` (String; optional)
  - `excludeOperators` (Array of Strings; optional)
  - `type` (String; required)
  - `preferWidgets` (Array of Strings; optional)
  - `valueSources` (Array of a value equal to: 'field', 'func', 'value', 'const's; optional)
  - `funcs` (Array of Strings; optional)
  - `tableName` (String; optional)
  - `fieldName` (String; optional)
  - `jsonLogicVar` (String; optional)
  - `fieldSettings` (optional): . fieldSettings has the following type: lists containing elements 'min', 'max', 'step', 'marks', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `min` (Real; optional)
  - `max` (Real; optional)
  - `step` (Real; optional)
  - `marks` (Dict with Strings as keys and values of type String; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'timeFormat', 'dateFormat', 'valueFormat', 'use12Hours', 'useKeyboard', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `timeFormat` (String; optional)
  - `dateFormat` (String; optional)
  - `valueFormat` (String; optional)
  - `use12Hours` (Bool; optional)
  - `useKeyboard` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'listValues', 'allowCustomValues', 'showSearch', 'searchPlaceholder', 'showCheckboxes', 'asyncFetch', 'useLoadMore', 'useAsyncSearch', 'forceAsyncSearch', 'fetchSelectedValuesOnInit', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `listValues` (Bool | Real | String | Dict | Array; optional)
  - `allowCustomValues` (Bool; optional)
  - `showSearch` (Bool; optional)
  - `searchPlaceholder` (String; optional)
  - `showCheckboxes` (Bool; optional)
  - `asyncFetch` (optional): . asyncFetch has the following type: lists containing elements .
Those elements have the following types:

  - `useLoadMore` (Bool; optional)
  - `useAsyncSearch` (Bool; optional)
  - `forceAsyncSearch` (Bool; optional)
  - `fetchSelectedValuesOnInit` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'listValues', 'allowCustomValues', 'showSearch', 'searchPlaceholder', 'showCheckboxes', 'asyncFetch', 'useLoadMore', 'useAsyncSearch', 'forceAsyncSearch', 'fetchSelectedValuesOnInit', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `listValues` (Bool | Real | String | Dict | Array; optional)
  - `allowCustomValues` (Bool; optional)
  - `showSearch` (Bool; optional)
  - `searchPlaceholder` (String; optional)
  - `showCheckboxes` (Bool; optional)
  - `asyncFetch` (optional): . asyncFetch has the following type: lists containing elements .
Those elements have the following types:

  - `useLoadMore` (Bool; optional)
  - `useAsyncSearch` (Bool; optional)
  - `forceAsyncSearch` (Bool; optional)
  - `fetchSelectedValuesOnInit` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'treeValues', 'treeExpandAll', 'treeSelectOnlyLeafs', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `treeValues` (optional): . treeValues has the following type: Dict with Strings as keys and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disableCheckbox', 'checkable', 'path', 'value', 'title', 'isCustom', 'isHidden', 'groupTitle', 'renderTitle'.
Those elements have the following types:
  - `children` (Array of Bool | Real | String | Dict | Arrays; optional)
  - `parent` (Bool | Real | String | Dict | Array; optional)
  - `disabled` (Bool; optional)
  - `selectable` (Bool; optional)
  - `disableCheckbox` (Bool; optional)
  - `checkable` (Bool; optional)
  - `path` (Array of Strings; optional)
  - `value` (String | Real; required)
  - `title` (String; optional)
  - `isCustom` (Bool; optional)
  - `isHidden` (Bool; optional)
  - `groupTitle` (String; optional)
  - `renderTitle` (String; optional)
  - `treeExpandAll` (Bool; optional)
  - `treeSelectOnlyLeafs` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'treeValues', 'treeExpandAll', 'treeSelectOnlyLeafs', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `treeValues` (optional): . treeValues has the following type: Dict with Strings as keys and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disableCheckbox', 'checkable', 'path', 'value', 'title', 'isCustom', 'isHidden', 'groupTitle', 'renderTitle'.
Those elements have the following types:
  - `children` (Array of Bool | Real | String | Dict | Arrays; optional)
  - `parent` (Bool | Real | String | Dict | Array; optional)
  - `disabled` (Bool; optional)
  - `selectable` (Bool; optional)
  - `disableCheckbox` (Bool; optional)
  - `checkable` (Bool; optional)
  - `path` (Array of Strings; optional)
  - `value` (String | Real; required)
  - `title` (String; optional)
  - `isCustom` (Bool; optional)
  - `isHidden` (Bool; optional)
  - `groupTitle` (String; optional)
  - `renderTitle` (String; optional)
  - `treeExpandAll` (Bool; optional)
  - `treeSelectOnlyLeafs` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'labelYes', 'labelNo', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `labelYes` (String; optional)
  - `labelNo` (String; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'maxLength', 'maxRows', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `maxLength` (Real; optional)
  - `maxRows` (Real; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional)
  - `defaultValue` (Bool | Real | String | Dict | Array; optional)
  - `widgets` (optional): . widgets has the following type: Dict with Strings as keys and values of type lists containing elements 'widgetProps', 'opProps', 'operators', 'defaultOperator', 'valueLabel', 'valuePlaceholder'.
Those elements have the following types:
  - `widgetProps` (Bool | Real | String | Dict | Array; optional)
  - `opProps` (Bool | Real | String | Dict | Array; optional)
  - `operators` (Array of Strings; optional)
  - `defaultOperator` (String; optional)
  - `valueLabel` (String; optional)
  - `valuePlaceholder` (String; optional)
  - `mainWidgetProps` (Bool | Real | String | Dict | Array; optional)
  - `hideForSelect` (Bool; optional)
  - `hideForCompare` (Bool; optional)
  - `listValues` (Bool | Real | String | Dict | Array; optional)
  - `allowCustomValues` (Bool; optional)
  - `isSpelVariable` (Bool; optional)
  - `label` (String; optional)
  - `tooltip` (String; optional)
  - `fieldSeparator` (String; optional)
  - `fieldSeparatorDisplay` (String; optional)
  - `formatReverse` (optional): . formatReverse has the following type: lists containing elements .
Those elements have the following types:

  - `sqlFormatReverse` (optional): . sqlFormatReverse has the following type: lists containing elements .
Those elements have the following types:

  - `spelFormatReverse` (optional): . spelFormatReverse has the following type: lists containing elements .
Those elements have the following types:

  - `formatField` (optional): . formatField has the following type: lists containing elements .
Those elements have the following types:

  - `formatSpelField` (optional): . formatSpelField has the following type: lists containing elements .
Those elements have the following types:

  - `formatAggr` (optional): . formatAggr has the following type: lists containing elements .
Those elements have the following types:

  - `renderField` (optional): . renderField has the following type: lists containing elements .
Those elements have the following types:

  - `renderOperator` (optional): . renderOperator has the following type: lists containing elements .
Those elements have the following types:

  - `renderFunc` (optional): . renderFunc has the following type: lists containing elements .
Those elements have the following types:

  - `renderConjs` (optional): . renderConjs has the following type: lists containing elements .
Those elements have the following types:

  - `renderButton` (optional): . renderButton has the following type: lists containing elements .
Those elements have the following types:

  - `renderIcon` (optional): . renderIcon has the following type: lists containing elements .
Those elements have the following types:

  - `renderButtonGroup` (optional): . renderButtonGroup has the following type: lists containing elements .
Those elements have the following types:

  - `renderSwitch` (optional): . renderSwitch has the following type: lists containing elements .
Those elements have the following types:

  - `renderProvider` (optional): . renderProvider has the following type: lists containing elements .
Those elements have the following types:

  - `renderValueSources` (optional): . renderValueSources has the following type: lists containing elements .
Those elements have the following types:

  - `renderFieldSources` (optional): . renderFieldSources has the following type: lists containing elements .
Those elements have the following types:

  - `renderConfirm` (optional): . renderConfirm has the following type: lists containing elements .
Those elements have the following types:

  - `useConfirm` (optional)
  - `renderSize` (a value equal to: 'small', 'large', 'medium'; optional)
  - `renderItem` (optional): . renderItem has the following type: lists containing elements .
Those elements have the following types:

  - `dropdownPlacement` (a value equal to: 'topLeft', 'topCenter', 'topRight', 'bottomLeft', 'bottomCenter', 'bottomRight'; optional)
  - `groupActionsPosition` (a value equal to: 'topLeft', 'topCenter', 'topRight', 'bottomLeft', 'bottomCenter', 'bottomRight'; optional)
  - `showLabels` (Bool; optional)
  - `maxLabelsLength` (Real; optional)
  - `customFieldSelectProps` (optional): . customFieldSelectProps has the following type: Dict with Strings as keys and values of type lists containing elements .
Those elements have the following types:

  - `customOperatorSelectProps` (optional): . customOperatorSelectProps has the following type: Dict with Strings as keys and values of type lists containing elements .
Those elements have the following types:

  - `renderBeforeWidget` (optional): . renderBeforeWidget has the following type: lists containing elements .
Those elements have the following types:

  - `renderAfterWidget` (optional): . renderAfterWidget has the following type: lists containing elements .
Those elements have the following types:

  - `renderBeforeActions` (optional): . renderBeforeActions has the following type: lists containing elements .
Those elements have the following types:

  - `renderAfterActions` (optional): . renderAfterActions has the following type: lists containing elements .
Those elements have the following types:

  - `renderBeforeCaseValue` (optional): . renderBeforeCaseValue has the following type: lists containing elements .
Those elements have the following types:

  - `renderAfterCaseValue` (optional): . renderAfterCaseValue has the following type: lists containing elements .
Those elements have the following types:

  - `renderRuleError` (optional): . renderRuleError has the following type: lists containing elements .
Those elements have the following types:

  - `renderSwitchPrefix` (String; optional)
  - `defaultSliderWidth` (String; optional)
  - `defaultSelectWidth` (String; optional)
  - `defaultSearchWidth` (String; optional)
  - `defaultMaxRows` (Real; optional)
  - `operators` (Dict with Strings as keys and values of type Bool | Real | String | Dict | Array; required)
  - `widgets` (Dict with Strings as keys and values of type Bool | Real | String | Dict | Array; required)
  - `conjunctions` (required): . conjunctions has the following type: Dict with Strings as keys and values of type lists containing elements 'label', 'formatConj', 'sqlFormatConj', 'spelFormatConj', 'mongoConj', 'jsonLogicConj', 'sqlConj', 'spelConj', 'spelConjs', 'reversedConj'.
Those elements have the following types:
  - `label` (String; required)
  - `formatConj` (required): . formatConj has the following type: lists containing elements .
Those elements have the following types:

  - `sqlFormatConj` (required): . sqlFormatConj has the following type: lists containing elements .
Those elements have the following types:

  - `spelFormatConj` (required): . spelFormatConj has the following type: lists containing elements .
Those elements have the following types:

  - `mongoConj` (String; required)
  - `jsonLogicConj` (String; optional)
  - `sqlConj` (String; optional)
  - `spelConj` (String; optional)
  - `spelConjs` (Array of Strings; optional)
  - `reversedConj` (String; optional)
  - `types` (required): . types has the following type: Dict with Strings as keys and values of type lists containing elements 'valueSources', 'defaultOperator', 'widgets', 'mainWidget', 'excludeOperators', 'mainWidgetProps'.
Those elements have the following types:
  - `valueSources` (Array of a value equal to: 'field', 'func', 'value', 'const's; optional)
  - `defaultOperator` (String; optional)
  - `widgets` (required): . widgets has the following type: Dict with Strings as keys and values of type lists containing elements 'widgetProps', 'opProps', 'operators', 'defaultOperator', 'valueLabel', 'valuePlaceholder'.
Those elements have the following types:
  - `widgetProps` (Bool | Real | String | Dict | Array; optional)
  - `opProps` (Bool | Real | String | Dict | Array; optional)
  - `operators` (Array of Strings; optional)
  - `defaultOperator` (String; optional)
  - `valueLabel` (String; optional)
  - `valuePlaceholder` (String; optional)
  - `mainWidget` (String; optional)
  - `excludeOperators` (Array of Strings; optional)
  - `mainWidgetProps` (Bool | Real | String | Dict | Array; optional)
  - `fields` (required): . fields has the following type: Dict with Strings as keys and values of type lists containing elements 'label2', 'operators', 'defaultOperator', 'excludeOperators', 'type', 'preferWidgets', 'valueSources', 'funcs', 'tableName', 'fieldName', 'jsonLogicVar', 'fieldSettings', 'defaultValue', 'widgets', 'mainWidgetProps', 'hideForSelect', 'hideForCompare', 'listValues', 'allowCustomValues', 'isSpelVariable', 'label', 'tooltip'.
Those elements have the following types:
  - `label2` (String; optional)
  - `operators` (Array of Strings; optional)
  - `defaultOperator` (String; optional)
  - `excludeOperators` (Array of Strings; optional)
  - `type` (String; required)
  - `preferWidgets` (Array of Strings; optional)
  - `valueSources` (Array of a value equal to: 'field', 'func', 'value', 'const's; optional)
  - `funcs` (Array of Strings; optional)
  - `tableName` (String; optional)
  - `fieldName` (String; optional)
  - `jsonLogicVar` (String; optional)
  - `fieldSettings` (optional): . fieldSettings has the following type: lists containing elements 'min', 'max', 'step', 'marks', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `min` (Real; optional)
  - `max` (Real; optional)
  - `step` (Real; optional)
  - `marks` (Dict with Strings as keys and values of type String; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'timeFormat', 'dateFormat', 'valueFormat', 'use12Hours', 'useKeyboard', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `timeFormat` (String; optional)
  - `dateFormat` (String; optional)
  - `valueFormat` (String; optional)
  - `use12Hours` (Bool; optional)
  - `useKeyboard` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'listValues', 'allowCustomValues', 'showSearch', 'searchPlaceholder', 'showCheckboxes', 'asyncFetch', 'useLoadMore', 'useAsyncSearch', 'forceAsyncSearch', 'fetchSelectedValuesOnInit', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `listValues` (Bool | Real | String | Dict | Array; optional)
  - `allowCustomValues` (Bool; optional)
  - `showSearch` (Bool; optional)
  - `searchPlaceholder` (String; optional)
  - `showCheckboxes` (Bool; optional)
  - `asyncFetch` (optional): . asyncFetch has the following type: lists containing elements .
Those elements have the following types:

  - `useLoadMore` (Bool; optional)
  - `useAsyncSearch` (Bool; optional)
  - `forceAsyncSearch` (Bool; optional)
  - `fetchSelectedValuesOnInit` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'listValues', 'allowCustomValues', 'showSearch', 'searchPlaceholder', 'showCheckboxes', 'asyncFetch', 'useLoadMore', 'useAsyncSearch', 'forceAsyncSearch', 'fetchSelectedValuesOnInit', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `listValues` (Bool | Real | String | Dict | Array; optional)
  - `allowCustomValues` (Bool; optional)
  - `showSearch` (Bool; optional)
  - `searchPlaceholder` (String; optional)
  - `showCheckboxes` (Bool; optional)
  - `asyncFetch` (optional): . asyncFetch has the following type: lists containing elements .
Those elements have the following types:

  - `useLoadMore` (Bool; optional)
  - `useAsyncSearch` (Bool; optional)
  - `forceAsyncSearch` (Bool; optional)
  - `fetchSelectedValuesOnInit` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'treeValues', 'treeExpandAll', 'treeSelectOnlyLeafs', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `treeValues` (optional): . treeValues has the following type: Dict with Strings as keys and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disableCheckbox', 'checkable', 'path', 'value', 'title', 'isCustom', 'isHidden', 'groupTitle', 'renderTitle'.
Those elements have the following types:
  - `children` (Array of Bool | Real | String | Dict | Arrays; optional)
  - `parent` (Bool | Real | String | Dict | Array; optional)
  - `disabled` (Bool; optional)
  - `selectable` (Bool; optional)
  - `disableCheckbox` (Bool; optional)
  - `checkable` (Bool; optional)
  - `path` (Array of Strings; optional)
  - `value` (String | Real; required)
  - `title` (String; optional)
  - `isCustom` (Bool; optional)
  - `isHidden` (Bool; optional)
  - `groupTitle` (String; optional)
  - `renderTitle` (String; optional)
  - `treeExpandAll` (Bool; optional)
  - `treeSelectOnlyLeafs` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'treeValues', 'treeExpandAll', 'treeSelectOnlyLeafs', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `treeValues` (optional): . treeValues has the following type: Dict with Strings as keys and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disableCheckbox', 'checkable', 'path', 'value', 'title', 'isCustom', 'isHidden', 'groupTitle', 'renderTitle'.
Those elements have the following types:
  - `children` (Array of Bool | Real | String | Dict | Arrays; optional)
  - `parent` (Bool | Real | String | Dict | Array; optional)
  - `disabled` (Bool; optional)
  - `selectable` (Bool; optional)
  - `disableCheckbox` (Bool; optional)
  - `checkable` (Bool; optional)
  - `path` (Array of Strings; optional)
  - `value` (String | Real; required)
  - `title` (String; optional)
  - `isCustom` (Bool; optional)
  - `isHidden` (Bool; optional)
  - `groupTitle` (String; optional)
  - `renderTitle` (String; optional)
  - `treeExpandAll` (Bool; optional)
  - `treeSelectOnlyLeafs` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'labelYes', 'labelNo', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `labelYes` (String; optional)
  - `labelNo` (String; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'maxLength', 'maxRows', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `maxLength` (Real; optional)
  - `maxRows` (Real; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional)
  - `defaultValue` (Bool | Real | String | Dict | Array; optional)
  - `widgets` (optional): . widgets has the following type: Dict with Strings as keys and values of type lists containing elements 'widgetProps', 'opProps', 'operators', 'defaultOperator', 'valueLabel', 'valuePlaceholder'.
Those elements have the following types:
  - `widgetProps` (Bool | Real | String | Dict | Array; optional)
  - `opProps` (Bool | Real | String | Dict | Array; optional)
  - `operators` (Array of Strings; optional)
  - `defaultOperator` (String; optional)
  - `valueLabel` (String; optional)
  - `valuePlaceholder` (String; optional)
  - `mainWidgetProps` (Bool | Real | String | Dict | Array; optional)
  - `hideForSelect` (Bool; optional)
  - `hideForCompare` (Bool; optional)
  - `listValues` (Bool | Real | String | Dict | Array; optional)
  - `allowCustomValues` (Bool; optional)
  - `isSpelVariable` (Bool; optional)
  - `label` (String; optional)
  - `tooltip` (String; optional)
  - `funcs` (Dict with Strings as keys and values of type Bool | Real | String | Dict | Array; optional)
  - `ctx` (Dict with Strings as keys and values of type Bool | Real | String | Dict | Array; required)
- `elasticSearchFormat` (optional): ElasticSearch query object. elasticSearchFormat has the following type: lists containing elements 'constructor', 'toString', 'toLocaleString', 'valueOf', 'hasOwnProperty', 'isPrototypeOf', 'propertyIsEnumerable'.
Those elements have the following types:
  - `constructor` (optional): The initial value of Object.prototype.constructor is the standard built-in Object constructor.
  - `toString` (optional): Returns a string representation of an object.
  - `toLocaleString` (optional): Returns a date converted to a string using the current locale.
  - `valueOf` (optional): Returns the primitive value of the specified object.
  - `hasOwnProperty` (optional): Determines whether an object has a property with the specified name.
@,param,v, ,A property name.
  - `isPrototypeOf` (optional): Determines whether an object exists in another object's prototype chain.
@,param,v, ,Another object whose prototype chain is to be checked.
  - `propertyIsEnumerable` (optional): Determines whether a specified property is enumerable.
@,param,v, ,A property name.
- `fields` (required): The fields to populate the query builder. See the
[Fields](https://github.com/ukrbublik/react-awesome-query-builder/blob/master/CONFIG.adoc#configfields) docs.. fields has the following type: Dict with Strings as keys and values of type lists containing elements 'label2', 'operators', 'defaultOperator', 'excludeOperators', 'type', 'preferWidgets', 'valueSources', 'funcs', 'tableName', 'fieldName', 'jsonLogicVar', 'fieldSettings', 'defaultValue', 'widgets', 'mainWidgetProps', 'hideForSelect', 'hideForCompare', 'listValues', 'allowCustomValues', 'isSpelVariable', 'label', 'tooltip'.
Those elements have the following types:
  - `label2` (String; optional)
  - `operators` (Array of Strings; optional)
  - `defaultOperator` (String; optional)
  - `excludeOperators` (Array of Strings; optional)
  - `type` (String; required)
  - `preferWidgets` (Array of Strings; optional)
  - `valueSources` (Array of a value equal to: 'field', 'func', 'value', 'const's; optional)
  - `funcs` (Array of Strings; optional)
  - `tableName` (String; optional)
  - `fieldName` (String; optional)
  - `jsonLogicVar` (String; optional)
  - `fieldSettings` (optional): . fieldSettings has the following type: lists containing elements 'min', 'max', 'step', 'marks', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `min` (Real; optional)
  - `max` (Real; optional)
  - `step` (Real; optional)
  - `marks` (Dict with Strings as keys and values of type String; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'timeFormat', 'dateFormat', 'valueFormat', 'use12Hours', 'useKeyboard', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `timeFormat` (String; optional)
  - `dateFormat` (String; optional)
  - `valueFormat` (String; optional)
  - `use12Hours` (Bool; optional)
  - `useKeyboard` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'listValues', 'allowCustomValues', 'showSearch', 'searchPlaceholder', 'showCheckboxes', 'asyncFetch', 'useLoadMore', 'useAsyncSearch', 'forceAsyncSearch', 'fetchSelectedValuesOnInit', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `listValues` (Bool | Real | String | Dict | Array; optional)
  - `allowCustomValues` (Bool; optional)
  - `showSearch` (Bool; optional)
  - `searchPlaceholder` (String; optional)
  - `showCheckboxes` (Bool; optional)
  - `asyncFetch` (optional): . asyncFetch has the following type: lists containing elements .
Those elements have the following types:

  - `useLoadMore` (Bool; optional)
  - `useAsyncSearch` (Bool; optional)
  - `forceAsyncSearch` (Bool; optional)
  - `fetchSelectedValuesOnInit` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'listValues', 'allowCustomValues', 'showSearch', 'searchPlaceholder', 'showCheckboxes', 'asyncFetch', 'useLoadMore', 'useAsyncSearch', 'forceAsyncSearch', 'fetchSelectedValuesOnInit', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `listValues` (Bool | Real | String | Dict | Array; optional)
  - `allowCustomValues` (Bool; optional)
  - `showSearch` (Bool; optional)
  - `searchPlaceholder` (String; optional)
  - `showCheckboxes` (Bool; optional)
  - `asyncFetch` (optional): . asyncFetch has the following type: lists containing elements .
Those elements have the following types:

  - `useLoadMore` (Bool; optional)
  - `useAsyncSearch` (Bool; optional)
  - `forceAsyncSearch` (Bool; optional)
  - `fetchSelectedValuesOnInit` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'treeValues', 'treeExpandAll', 'treeSelectOnlyLeafs', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `treeValues` (optional): . treeValues has the following type: Dict with Strings as keys and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disableCheckbox', 'checkable', 'path', 'value', 'title', 'isCustom', 'isHidden', 'groupTitle', 'renderTitle'.
Those elements have the following types:
  - `children` (Array of Bool | Real | String | Dict | Arrays; optional)
  - `parent` (Bool | Real | String | Dict | Array; optional)
  - `disabled` (Bool; optional)
  - `selectable` (Bool; optional)
  - `disableCheckbox` (Bool; optional)
  - `checkable` (Bool; optional)
  - `path` (Array of Strings; optional)
  - `value` (String | Real; required)
  - `title` (String; optional)
  - `isCustom` (Bool; optional)
  - `isHidden` (Bool; optional)
  - `groupTitle` (String; optional)
  - `renderTitle` (String; optional)
  - `treeExpandAll` (Bool; optional)
  - `treeSelectOnlyLeafs` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'treeValues', 'treeExpandAll', 'treeSelectOnlyLeafs', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `treeValues` (optional): . treeValues has the following type: Dict with Strings as keys and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disableCheckbox', 'checkable', 'path', 'value', 'title', 'isCustom', 'isHidden', 'groupTitle', 'renderTitle'.
Those elements have the following types:
  - `children` (Array of Bool | Real | String | Dict | Arrays; optional)
  - `parent` (Bool | Real | String | Dict | Array; optional)
  - `disabled` (Bool; optional)
  - `selectable` (Bool; optional)
  - `disableCheckbox` (Bool; optional)
  - `checkable` (Bool; optional)
  - `path` (Array of Strings; optional)
  - `value` (String | Real; required)
  - `title` (String; optional)
  - `isCustom` (Bool; optional)
  - `isHidden` (Bool; optional)
  - `groupTitle` (String; optional)
  - `renderTitle` (String; optional)
  - `treeExpandAll` (Bool; optional)
  - `treeSelectOnlyLeafs` (Bool; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'labelYes', 'labelNo', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `labelYes` (String; optional)
  - `labelNo` (String; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'maxLength', 'maxRows', 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `maxLength` (Real; optional)
  - `maxRows` (Real; optional)
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional) | lists containing elements 'validateValue', 'valuePlaceholder'.
Those elements have the following types:
  - `validateValue` (optional): . validateValue has the following type: lists containing elements .
Those elements have the following types:

  - `valuePlaceholder` (String; optional)
  - `defaultValue` (Bool | Real | String | Dict | Array; optional)
  - `widgets` (optional): . widgets has the following type: Dict with Strings as keys and values of type lists containing elements 'widgetProps', 'opProps', 'operators', 'defaultOperator', 'valueLabel', 'valuePlaceholder'.
Those elements have the following types:
  - `widgetProps` (Bool | Real | String | Dict | Array; optional)
  - `opProps` (Bool | Real | String | Dict | Array; optional)
  - `operators` (Array of Strings; optional)
  - `defaultOperator` (String; optional)
  - `valueLabel` (String; optional)
  - `valuePlaceholder` (String; optional)
  - `mainWidgetProps` (Bool | Real | String | Dict | Array; optional)
  - `hideForSelect` (Bool; optional)
  - `hideForCompare` (Bool; optional)
  - `listValues` (Bool | Real | String | Dict | Array; optional)
  - `allowCustomValues` (Bool; optional)
  - `isSpelVariable` (Bool; optional)
  - `label` (String; optional)
  - `tooltip` (String; optional)
- `jsonLogicFormat` (optional): JSONLogic object. jsonLogicFormat has the following type: lists containing elements 'constructor', 'toString', 'toLocaleString', 'valueOf', 'hasOwnProperty', 'isPrototypeOf', 'propertyIsEnumerable'.
Those elements have the following types:
  - `constructor` (optional): The initial value of Object.prototype.constructor is the standard built-in Object constructor.
  - `toString` (optional): Returns a string representation of an object.
  - `toLocaleString` (optional): Returns a date converted to a string using the current locale.
  - `valueOf` (optional): Returns the primitive value of the specified object.
  - `hasOwnProperty` (optional): Determines whether an object has a property with the specified name.
@,param,v, ,A property name.
  - `isPrototypeOf` (optional): Determines whether an object exists in another object's prototype chain.
@,param,v, ,Another object whose prototype chain is to be checked.
  - `propertyIsEnumerable` (optional): Determines whether a specified property is enumerable.
@,param,v, ,A property name.
- `loadFormat` (a value equal to: 'tree', 'jsonLogicFormat', 'spelFormat'; optional): The load format string. Changes the tree based on the corresponding prop change
- `mongoDBFormat` (optional): MongoDB query object. mongoDBFormat has the following type: lists containing elements 'constructor', 'toString', 'toLocaleString', 'valueOf', 'hasOwnProperty', 'isPrototypeOf', 'propertyIsEnumerable'.
Those elements have the following types:
  - `constructor` (optional): The initial value of Object.prototype.constructor is the standard built-in Object constructor.
  - `toString` (optional): Returns a string representation of an object.
  - `toLocaleString` (optional): Returns a date converted to a string using the current locale.
  - `valueOf` (optional): Returns the primitive value of the specified object.
  - `hasOwnProperty` (optional): Determines whether an object has a property with the specified name.
@,param,v, ,A property name.
  - `isPrototypeOf` (optional): Determines whether an object exists in another object's prototype chain.
@,param,v, ,Another object whose prototype chain is to be checked.
  - `propertyIsEnumerable` (optional): Determines whether a specified property is enumerable.
@,param,v, ,A property name.
- `queryBuilderFormat` (optional): Query Builder object. queryBuilderFormat has the following type: lists containing elements 'constructor', 'toString', 'toLocaleString', 'valueOf', 'hasOwnProperty', 'isPrototypeOf', 'propertyIsEnumerable'.
Those elements have the following types:
  - `constructor` (optional): The initial value of Object.prototype.constructor is the standard built-in Object constructor.
  - `toString` (optional): Returns a string representation of an object.
  - `toLocaleString` (optional): Returns a date converted to a string using the current locale.
  - `valueOf` (optional): Returns the primitive value of the specified object.
  - `hasOwnProperty` (optional): Determines whether an object has a property with the specified name.
@,param,v, ,A property name.
  - `isPrototypeOf` (optional): Determines whether an object exists in another object's prototype chain.
@,param,v, ,Another object whose prototype chain is to be checked.
  - `propertyIsEnumerable` (optional): Determines whether a specified property is enumerable.
@,param,v, ,A property name.
- `queryString` (String; optional): Query string
- `spelFormat` (String; optional): SPEL query string
- `sqlFormat` (String; optional): The WHERE clause in SQL
- `theme` (a value equal to: 'mui', 'antd', 'fluent', 'bootstrap', 'basic'; optional): The theme/styling used
- `tree` (Bool | Real | String | Dict | Array; optional): The JSON representation of the tree
"""
function ''_dash_query_builder(; kwargs...)
        available_props = Symbol[:id, :alwaysShowActionButtons, :config, :elasticSearchFormat, :fields, :jsonLogicFormat, :loadFormat, :mongoDBFormat, :queryBuilderFormat, :queryString, :spelFormat, :sqlFormat, :theme, :tree]
        wild_props = Symbol[]
        return Component("''_dash_query_builder", "dash_query_builder", "dqb2", available_props, wild_props; kwargs...)
end

