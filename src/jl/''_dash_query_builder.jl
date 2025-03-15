# AUTO GENERATED FILE - DO NOT EDIT

export ''_dash_query_builder

"""
    ''_dash_query_builder(;kwargs...)

A dash_query_builder component.
The Dash Query Builder component
Keyword arguments:
- `id` (String; optional): Unique ID to identify this component in Dash callbacks.
- `alwaysShowActionButtons` (Bool; optional): Whether to show action buttons all the time or just on hover
- `clear` (Bool; optional): Whether to clear the tree
- `config` (Bool | Real | String | Dict | Array; optional): The config object. See the [Config](https://github.com/ukrbublik/react-awesome-query-builder/blob/master/CONFIG.adoc docs).
- `debounceTime` (Real; optional): debounce time for dynamic update.
- `dynamic` (Bool; optional): Toggles whether the tree is updated automatically or through a button.
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
- `fields` (Dict with Strings as keys and values of type Bool | Real | String | Dict | Array; required): The fields to populate the query builder. See the
[Fields](https://github.com/ukrbublik/react-awesome-query-builder/blob/master/CONFIG.adoc#configfields) docs.
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
- `queryString` (String; optional): Query string
- `spelFormat` (String; optional): SPEL query string
- `sqlFormat` (String; optional): The WHERE clause in SQL
- `theme` (a value equal to: 'mui', 'material', 'antd', 'fluent', 'bootstrap', 'basic'; optional): The theme/styling used
- `tree` (Bool | Real | String | Dict | Array; optional): The JSON representation of the tree
"""
function ''_dash_query_builder(; kwargs...)
        available_props = Symbol[:id, :alwaysShowActionButtons, :clear, :config, :debounceTime, :dynamic, :elasticSearchFormat, :fields, :jsonLogicFormat, :loadFormat, :mongoDBFormat, :queryString, :spelFormat, :sqlFormat, :theme, :tree]
        wild_props = Symbol[]
        return Component("''_dash_query_builder", "dash_query_builder", "dqb2", available_props, wild_props; kwargs...)
end

