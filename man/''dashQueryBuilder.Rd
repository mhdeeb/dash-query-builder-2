% Auto-generated: do not edit by hand
\name{''dashQueryBuilder}

\alias{''dashQueryBuilder}

\title{dash_query_builder component}

\description{
The Dash Query Builder component
}

\usage{
''dashQueryBuilder(id=NULL, alwaysShowActionButtons=NULL, config=NULL,
debounceTime=NULL, dynamic=NULL, elasticSearchFormat=NULL,
fields=NULL, jsonLogicFormat=NULL, loadFormat=NULL,
mongoDBFormat=NULL, queryBuilderFormat=NULL,
queryString=NULL, spelFormat=NULL, sqlFormat=NULL,
theme=NULL, tree=NULL)
}

\arguments{
\item{id}{Character. Unique ID to identify this component in Dash callbacks.}

\item{alwaysShowActionButtons}{Logical. Whether to show action buttons all the time or just on hover}

\item{config}{Logical | numeric | character | named list | unnamed list. The config object. See the [Config](https://github.com/ukrbublik/react-awesome-query-builder/blob/master/CONFIG.adoc docs).}

\item{debounceTime}{Numeric. debounce time for dynamic update.}

\item{dynamic}{Logical. Toggles whether the tree is updated automatically or through a button.}

\item{elasticSearchFormat}{Lists containing elements 'constructor', 'tostring', 'tolocalestring', 'valueof', 'hasownproperty', 'isprototypeof', 'propertyisenumerable'.
those elements have the following types:
  - constructor (optional): the initial value of object.prototype.constructor is the standard built-in object constructor.
  - tostring (optional): returns a string representation of an object.
  - tolocalestring (optional): returns a date converted to a string using the current locale.
  - valueof (optional): returns the primitive value of the specified object.
  - hasownproperty (optional): determines whether an object has a property with the specified name.
@,param,v, ,a property name.
  - isprototypeof (optional): determines whether an object exists in another object's prototype chain.
@,param,v, ,another object whose prototype chain is to be checked.
  - propertyisenumerable (optional): determines whether a specified property is enumerable.
@,param,v, ,a property name.. ElasticSearch query object}

\item{fields}{List with named elements and values of type logical | numeric | character | named list | unnamed list. The fields to populate the query builder. See the
[Fields](https://github.com/ukrbublik/react-awesome-query-builder/blob/master/CONFIG.adoc#configfields) docs.}

\item{jsonLogicFormat}{Lists containing elements 'constructor', 'tostring', 'tolocalestring', 'valueof', 'hasownproperty', 'isprototypeof', 'propertyisenumerable'.
those elements have the following types:
  - constructor (optional): the initial value of object.prototype.constructor is the standard built-in object constructor.
  - tostring (optional): returns a string representation of an object.
  - tolocalestring (optional): returns a date converted to a string using the current locale.
  - valueof (optional): returns the primitive value of the specified object.
  - hasownproperty (optional): determines whether an object has a property with the specified name.
@,param,v, ,a property name.
  - isprototypeof (optional): determines whether an object exists in another object's prototype chain.
@,param,v, ,another object whose prototype chain is to be checked.
  - propertyisenumerable (optional): determines whether a specified property is enumerable.
@,param,v, ,a property name.. JSONLogic object}

\item{loadFormat}{A value equal to: 'tree', 'jsonlogicformat', 'spelformat'. The load format string. Changes the tree based on the corresponding prop change}

\item{mongoDBFormat}{Lists containing elements 'constructor', 'tostring', 'tolocalestring', 'valueof', 'hasownproperty', 'isprototypeof', 'propertyisenumerable'.
those elements have the following types:
  - constructor (optional): the initial value of object.prototype.constructor is the standard built-in object constructor.
  - tostring (optional): returns a string representation of an object.
  - tolocalestring (optional): returns a date converted to a string using the current locale.
  - valueof (optional): returns the primitive value of the specified object.
  - hasownproperty (optional): determines whether an object has a property with the specified name.
@,param,v, ,a property name.
  - isprototypeof (optional): determines whether an object exists in another object's prototype chain.
@,param,v, ,another object whose prototype chain is to be checked.
  - propertyisenumerable (optional): determines whether a specified property is enumerable.
@,param,v, ,a property name.. MongoDB query object}

\item{queryBuilderFormat}{Lists containing elements 'constructor', 'tostring', 'tolocalestring', 'valueof', 'hasownproperty', 'isprototypeof', 'propertyisenumerable'.
those elements have the following types:
  - constructor (optional): the initial value of object.prototype.constructor is the standard built-in object constructor.
  - tostring (optional): returns a string representation of an object.
  - tolocalestring (optional): returns a date converted to a string using the current locale.
  - valueof (optional): returns the primitive value of the specified object.
  - hasownproperty (optional): determines whether an object has a property with the specified name.
@,param,v, ,a property name.
  - isprototypeof (optional): determines whether an object exists in another object's prototype chain.
@,param,v, ,another object whose prototype chain is to be checked.
  - propertyisenumerable (optional): determines whether a specified property is enumerable.
@,param,v, ,a property name.. Query Builder object}

\item{queryString}{Character. Query string}

\item{spelFormat}{Character. SPEL query string}

\item{sqlFormat}{Character. The WHERE clause in SQL}

\item{theme}{A value equal to: 'mui', 'material', 'antd', 'fluent', 'bootstrap', 'basic'. The theme/styling used}

\item{tree}{Logical | numeric | character | named list | unnamed list. The JSON representation of the tree}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

