% Auto-generated: do not edit by hand
\name{''dashQueryBuilder}

\alias{''dashQueryBuilder}

\title{dash_query_builder component}

\description{
The Dash Query Builder component
}

\usage{
''dashQueryBuilder(id=NULL, alwaysShowActionButtons=NULL, config=NULL,
elasticSearchFormat=NULL, fields=NULL, jsonLogicFormat=NULL,
loadFormat=NULL, mongoDBFormat=NULL,
queryBuilderFormat=NULL, queryString=NULL, spelFormat=NULL,
sqlFormat=NULL, theme=NULL, tree=NULL)
}

\arguments{
\item{id}{Character. Unique ID to identify this component in Dash callbacks.}

\item{alwaysShowActionButtons}{Logical. Whether to show action buttons all the time or just on hover}

\item{config}{Lists containing elements 'settings', 'operators', 'widgets', 'conjunctions', 'types', 'fields', 'funcs', 'ctx'.
those elements have the following types:
  - settings (required): . settings has the following type: lists containing elements 'locale', 'theme', 'valuelabel', 'valueplaceholder', 'fieldlabel', 'operatorlabel', 'fieldplaceholder', 'funcplaceholder', 'funclabel', 'operatorplaceholder', 'locklabel', 'lockedlabel', 'deletelabel', 'addgrouplabel', 'addcaselabel', 'adddefaultcaselabel', 'defaultcaselabel', 'addrulelabel', 'addsubrulelabel', 'addsubgrouplabel', 'delgrouplabel', 'notlabel', 'fieldsourcespopuptitle', 'valuesourcespopuptitle', 'removeruleconfirmoptions', 'removegroupconfirmoptions', 'loadmorelabel', 'loadingmorelabel', 'typetosearchlabel', 'loadinglabel', 'notfoundlabel', 'reverseoperatorsfornot', 'canshortmongoquery', 'defaultfield', 'defaultoperator', 'defaultconjunction', 'fieldsources', 'valuesourcesinfo', 'cancomparefieldwithfield', 'canreorder', 'canregroup', 'canregroupcases', 'shownot', 'showlock', 'candeletelocked', 'maxnesting', 'setoponchangefield', 'clearvalueonchangefield', 'clearvalueonchangeop', 'canleaveemptygroup', 'canleaveemptycase', 'shouldcreateemptygroup', 'forceshowconj', 'immutablegroupsmode', 'immutablefieldsmode', 'immutableopsmode', 'immutablevaluesmode', 'maxnumberofrules', 'maxnumberofcases', 'showerrormessage', 'convertablewidgets', 'exportpreservegroups', 'removeemptygroupsonload', 'removeemptyrulesonload', 'removeincompleterulesonload', 'removeinvalidmultiselectvaluesonload', 'groupoperators', 'useconfigcompress', 'keepinputonchangefieldsrc', 'fielditemkeysforsearch', 'listkeysforsearch', 'sqldialect', 'casevaluefield', 'fieldseparator', 'fieldseparatordisplay', 'formatreverse', 'sqlformatreverse', 'spelformatreverse', 'formatfield', 'formatspelfield', 'formataggr', 'renderfield', 'renderoperator', 'renderfunc', 'renderconjs', 'renderbutton', 'rendericon', 'renderbuttongroup', 'renderswitch', 'renderprovider', 'rendervaluesources', 'renderfieldsources', 'renderconfirm', 'useconfirm', 'rendersize', 'renderitem', 'dropdownplacement', 'groupactionsposition', 'showlabels', 'maxlabelslength', 'customfieldselectprops', 'customoperatorselectprops', 'renderbeforewidget', 'renderafterwidget', 'renderbeforeactions', 'renderafteractions', 'renderbeforecasevalue', 'renderaftercasevalue', 'renderruleerror', 'renderswitchprefix', 'defaultsliderwidth', 'defaultselectwidth', 'defaultsearchwidth', 'defaultmaxrows'.
those elements have the following types:
  - locale (optional): . locale has the following type: lists containing elements 'moment', 'antd', 'material', 'mui'.
those elements have the following types:
  - moment (character; optional)
  - antd (optional): . antd has the following type: lists containing elements 'constructor', 'tostring', 'tolocalestring', 'valueof', 'hasownproperty', 'isprototypeof', 'propertyisenumerable'.
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
@,param,v, ,a property name.
  - material (optional): . material has the following type: lists containing elements 'constructor', 'tostring', 'tolocalestring', 'valueof', 'hasownproperty', 'isprototypeof', 'propertyisenumerable'.
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
@,param,v, ,a property name.
  - mui (optional): . mui has the following type: lists containing elements 'constructor', 'tostring', 'tolocalestring', 'valueof', 'hasownproperty', 'isprototypeof', 'propertyisenumerable'.
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
@,param,v, ,a property name.
  - theme (optional): . theme has the following type: lists containing elements 'material', 'mui'.
those elements have the following types:
  - material (optional): . material has the following type: lists containing elements 'constructor', 'tostring', 'tolocalestring', 'valueof', 'hasownproperty', 'isprototypeof', 'propertyisenumerable'.
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
@,param,v, ,a property name.
  - mui (optional): . mui has the following type: lists containing elements 'constructor', 'tostring', 'tolocalestring', 'valueof', 'hasownproperty', 'isprototypeof', 'propertyisenumerable'.
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
@,param,v, ,a property name.
  - valuelabel (character; optional)
  - valueplaceholder (character; optional)
  - fieldlabel (character; optional)
  - operatorlabel (character; optional)
  - fieldplaceholder (character; optional)
  - funcplaceholder (character; optional)
  - funclabel (character; optional)
  - operatorplaceholder (character; optional)
  - locklabel (character; optional)
  - lockedlabel (character; optional)
  - deletelabel (character; optional)
  - addgrouplabel (character; optional)
  - addcaselabel (character; optional)
  - adddefaultcaselabel (character; optional)
  - defaultcaselabel (character; optional)
  - addrulelabel (character; optional)
  - addsubrulelabel (character; optional)
  - addsubgrouplabel (character; optional)
  - delgrouplabel (character; optional)
  - notlabel (character; optional)
  - fieldsourcespopuptitle (character; optional)
  - valuesourcespopuptitle (character; optional)
  - removeruleconfirmoptions (optional): . removeruleconfirmoptions has the following type: lists containing elements 'title', 'oktext', 'oktype', 'canceltext'.
those elements have the following types:
  - title (character; optional)
  - oktext (character; optional)
  - oktype (character; optional)
  - canceltext (character; optional)
  - removegroupconfirmoptions (optional): . removegroupconfirmoptions has the following type: lists containing elements 'title', 'oktext', 'oktype', 'canceltext'.
those elements have the following types:
  - title (character; optional)
  - oktext (character; optional)
  - oktype (character; optional)
  - canceltext (character; optional)
  - loadmorelabel (character; optional)
  - loadingmorelabel (character; optional)
  - typetosearchlabel (character; optional)
  - loadinglabel (character; optional)
  - notfoundlabel (character; optional)
  - reverseoperatorsfornot (logical; optional)
  - canshortmongoquery (logical; optional)
  - defaultfield (character; optional)
  - defaultoperator (character; optional)
  - defaultconjunction (character; optional)
  - fieldsources (list of a value equal to: 'field', 'func's; optional)
  - valuesourcesinfo (optional): . valuesourcesinfo has the following type: lists containing elements 'field', 'func', 'value', 'const'.
those elements have the following types:
  - field (optional): . field has the following type: lists containing elements 'label', 'widget'.
those elements have the following types:
  - label (character; required)
  - widget (character; optional)
  - func (optional): . func has the following type: lists containing elements 'label', 'widget'.
those elements have the following types:
  - label (character; required)
  - widget (character; optional)
  - value (optional): . value has the following type: lists containing elements 'label', 'widget'.
those elements have the following types:
  - label (character; required)
  - widget (character; optional)
  - const (optional): . const has the following type: lists containing elements 'label', 'widget'.
those elements have the following types:
  - label (character; required)
  - widget (character; optional)
  - cancomparefieldwithfield (optional): . cancomparefieldwithfield has the following type: lists containing elements .
those elements have the following types:

  - canreorder (logical; optional)
  - canregroup (logical; optional)
  - canregroupcases (logical; optional)
  - shownot (logical; optional)
  - showlock (logical; optional)
  - candeletelocked (logical; optional)
  - maxnesting (numeric; optional)
  - setoponchangefield (list of a value equal to: 'default', 'keep', 'first', 'none's; required)
  - clearvalueonchangefield (logical; optional)
  - clearvalueonchangeop (logical; optional)
  - canleaveemptygroup (logical; optional)
  - canleaveemptycase (logical; optional)
  - shouldcreateemptygroup (logical; optional)
  - forceshowconj (logical; optional)
  - immutablegroupsmode (logical; optional)
  - immutablefieldsmode (logical; optional)
  - immutableopsmode (logical; optional)
  - immutablevaluesmode (logical; optional)
  - maxnumberofrules (optional): . maxnumberofrules has the following type: lists containing elements 'tostring', 'tofixed', 'toexponential', 'toprecision', 'valueof', 'tolocalestring'.
those elements have the following types:
  - tostring (optional): returns a string representation of an object.
@,param,radix, ,specifies a radix for converting numeric values to strings. this value is only used for numbers.
  - tofixed (required): returns a string representing a number in fixed-point notation.
@,param,fractiondigits, ,number of digits after the decimal point. must be in the range 0 - 20, inclusive.
  - toexponential (required): returns a string containing a number represented in exponential notation.
@,param,fractiondigits, ,number of digits after the decimal point. must be in the range 0 - 20, inclusive.
  - toprecision (required): returns a string containing a number represented either in exponential or fixed-point notation with a specified number of digits.
@,param,precision, ,number of significant digits. must be in the range 1 - 21, inclusive.
  - valueof (optional): returns the primitive value of the specified object.
  - tolocalestring (optional): converts a number to a string by using the current or specified locale.
@,param,locales, ,a locale string or array of locale strings that contain one or more language or locale tags. if you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. if you omit this parameter, the default locale of the javascript runtime is used.
@,param,options, ,an object that contains one or more properties that specify comparison options.
@,param,locales, ,a locale string, array of locale strings, intl.locale object, or array of intl.locale objects that contain one or more language or locale tags. if you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. if you omit this parameter, the default locale of the javascript runtime is used.
@,param,options, ,an object that contains one or more properties that specify comparison options.. tolocalestring has the following type: lists containing elements .
those elements have the following types:

  - maxnumberofcases (optional): . maxnumberofcases has the following type: lists containing elements 'tostring', 'tofixed', 'toexponential', 'toprecision', 'valueof', 'tolocalestring'.
those elements have the following types:
  - tostring (optional): returns a string representation of an object.
@,param,radix, ,specifies a radix for converting numeric values to strings. this value is only used for numbers.
  - tofixed (required): returns a string representing a number in fixed-point notation.
@,param,fractiondigits, ,number of digits after the decimal point. must be in the range 0 - 20, inclusive.
  - toexponential (required): returns a string containing a number represented in exponential notation.
@,param,fractiondigits, ,number of digits after the decimal point. must be in the range 0 - 20, inclusive.
  - toprecision (required): returns a string containing a number represented either in exponential or fixed-point notation with a specified number of digits.
@,param,precision, ,number of significant digits. must be in the range 1 - 21, inclusive.
  - valueof (optional): returns the primitive value of the specified object.
  - tolocalestring (optional): converts a number to a string by using the current or specified locale.
@,param,locales, ,a locale string or array of locale strings that contain one or more language or locale tags. if you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. if you omit this parameter, the default locale of the javascript runtime is used.
@,param,options, ,an object that contains one or more properties that specify comparison options.
@,param,locales, ,a locale string, array of locale strings, intl.locale object, or array of intl.locale objects that contain one or more language or locale tags. if you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. if you omit this parameter, the default locale of the javascript runtime is used.
@,param,options, ,an object that contains one or more properties that specify comparison options.. tolocalestring has the following type: lists containing elements .
those elements have the following types:

  - showerrormessage (logical; optional)
  - convertablewidgets (list with named elements and values of type list of characters; optional)
  - exportpreservegroups (logical; optional)
  - removeemptygroupsonload (logical; optional)
  - removeemptyrulesonload (logical; optional)
  - removeincompleterulesonload (logical; optional)
  - removeinvalidmultiselectvaluesonload (logical; optional)
  - groupoperators (list of characters; optional)
  - useconfigcompress (logical; optional)
  - keepinputonchangefieldsrc (logical; optional)
  - fielditemkeysforsearch (list of a value equal to: 'key', 'path', 'label', 'altlabel', 'tooltip', 'grouplabel's; optional)
  - listkeysforsearch (list of a value equal to: 'value', 'title', 'grouptitle's; optional)
  - sqldialect (a value equal to: 'bigquery', 'postgresql', 'mysql'; optional)
  - casevaluefield (optional): . casevaluefield has the following type: lists containing elements 'label2', 'operators', 'defaultoperator', 'excludeoperators', 'type', 'preferwidgets', 'valuesources', 'funcs', 'tablename', 'fieldname', 'jsonlogicvar', 'fieldsettings', 'defaultvalue', 'widgets', 'mainwidgetprops', 'hideforselect', 'hideforcompare', 'listvalues', 'allowcustomvalues', 'isspelvariable', 'label', 'tooltip'.
those elements have the following types:
  - label2 (character; optional)
  - operators (list of characters; optional)
  - defaultoperator (character; optional)
  - excludeoperators (list of characters; optional)
  - type (character; required)
  - preferwidgets (list of characters; optional)
  - valuesources (list of a value equal to: 'field', 'func', 'value', 'const's; optional)
  - funcs (list of characters; optional)
  - tablename (character; optional)
  - fieldname (character; optional)
  - jsonlogicvar (character; optional)
  - fieldsettings (optional): . fieldsettings has the following type: lists containing elements 'min', 'max', 'step', 'marks', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - min (numeric; optional)
  - max (numeric; optional)
  - step (numeric; optional)
  - marks (list with named elements and values of type character; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'timeformat', 'dateformat', 'valueformat', 'use12hours', 'usekeyboard', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - timeformat (character; optional)
  - dateformat (character; optional)
  - valueformat (character; optional)
  - use12hours (logical; optional)
  - usekeyboard (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'listvalues', 'allowcustomvalues', 'showsearch', 'searchplaceholder', 'showcheckboxes', 'asyncfetch', 'useloadmore', 'useasyncsearch', 'forceasyncsearch', 'fetchselectedvaluesoninit', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - listvalues (logical | numeric | character | named list | unnamed list; optional)
  - allowcustomvalues (logical; optional)
  - showsearch (logical; optional)
  - searchplaceholder (character; optional)
  - showcheckboxes (logical; optional)
  - asyncfetch (optional): . asyncfetch has the following type: lists containing elements .
those elements have the following types:

  - useloadmore (logical; optional)
  - useasyncsearch (logical; optional)
  - forceasyncsearch (logical; optional)
  - fetchselectedvaluesoninit (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'listvalues', 'allowcustomvalues', 'showsearch', 'searchplaceholder', 'showcheckboxes', 'asyncfetch', 'useloadmore', 'useasyncsearch', 'forceasyncsearch', 'fetchselectedvaluesoninit', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - listvalues (logical | numeric | character | named list | unnamed list; optional)
  - allowcustomvalues (logical; optional)
  - showsearch (logical; optional)
  - searchplaceholder (character; optional)
  - showcheckboxes (logical; optional)
  - asyncfetch (optional): . asyncfetch has the following type: lists containing elements .
those elements have the following types:

  - useloadmore (logical; optional)
  - useasyncsearch (logical; optional)
  - forceasyncsearch (logical; optional)
  - fetchselectedvaluesoninit (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'treevalues', 'treeexpandall', 'treeselectonlyleafs', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - treevalues (optional): . treevalues has the following type: list with named elements and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disablecheckbox', 'checkable', 'path', 'value', 'title', 'iscustom', 'ishidden', 'grouptitle', 'rendertitle'.
those elements have the following types:
  - children (list of logical | numeric | character | named list | unnamed lists; optional)
  - parent (logical | numeric | character | named list | unnamed list; optional)
  - disabled (logical; optional)
  - selectable (logical; optional)
  - disablecheckbox (logical; optional)
  - checkable (logical; optional)
  - path (list of characters; optional)
  - value (character | numeric; required)
  - title (character; optional)
  - iscustom (logical; optional)
  - ishidden (logical; optional)
  - grouptitle (character; optional)
  - rendertitle (character; optional)
  - treeexpandall (logical; optional)
  - treeselectonlyleafs (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'treevalues', 'treeexpandall', 'treeselectonlyleafs', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - treevalues (optional): . treevalues has the following type: list with named elements and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disablecheckbox', 'checkable', 'path', 'value', 'title', 'iscustom', 'ishidden', 'grouptitle', 'rendertitle'.
those elements have the following types:
  - children (list of logical | numeric | character | named list | unnamed lists; optional)
  - parent (logical | numeric | character | named list | unnamed list; optional)
  - disabled (logical; optional)
  - selectable (logical; optional)
  - disablecheckbox (logical; optional)
  - checkable (logical; optional)
  - path (list of characters; optional)
  - value (character | numeric; required)
  - title (character; optional)
  - iscustom (logical; optional)
  - ishidden (logical; optional)
  - grouptitle (character; optional)
  - rendertitle (character; optional)
  - treeexpandall (logical; optional)
  - treeselectonlyleafs (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'labelyes', 'labelno', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - labelyes (character; optional)
  - labelno (character; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'maxlength', 'maxrows', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - maxlength (numeric; optional)
  - maxrows (numeric; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional)
  - defaultvalue (logical | numeric | character | named list | unnamed list; optional)
  - widgets (optional): . widgets has the following type: list with named elements and values of type lists containing elements 'widgetprops', 'opprops', 'operators', 'defaultoperator', 'valuelabel', 'valueplaceholder'.
those elements have the following types:
  - widgetprops (logical | numeric | character | named list | unnamed list; optional)
  - opprops (logical | numeric | character | named list | unnamed list; optional)
  - operators (list of characters; optional)
  - defaultoperator (character; optional)
  - valuelabel (character; optional)
  - valueplaceholder (character; optional)
  - mainwidgetprops (logical | numeric | character | named list | unnamed list; optional)
  - hideforselect (logical; optional)
  - hideforcompare (logical; optional)
  - listvalues (logical | numeric | character | named list | unnamed list; optional)
  - allowcustomvalues (logical; optional)
  - isspelvariable (logical; optional)
  - label (character; optional)
  - tooltip (character; optional)
  - fieldseparator (character; optional)
  - fieldseparatordisplay (character; optional)
  - formatreverse (optional): . formatreverse has the following type: lists containing elements .
those elements have the following types:

  - sqlformatreverse (optional): . sqlformatreverse has the following type: lists containing elements .
those elements have the following types:

  - spelformatreverse (optional): . spelformatreverse has the following type: lists containing elements .
those elements have the following types:

  - formatfield (optional): . formatfield has the following type: lists containing elements .
those elements have the following types:

  - formatspelfield (optional): . formatspelfield has the following type: lists containing elements .
those elements have the following types:

  - formataggr (optional): . formataggr has the following type: lists containing elements .
those elements have the following types:

  - renderfield (optional): . renderfield has the following type: lists containing elements .
those elements have the following types:

  - renderoperator (optional): . renderoperator has the following type: lists containing elements .
those elements have the following types:

  - renderfunc (optional): . renderfunc has the following type: lists containing elements .
those elements have the following types:

  - renderconjs (optional): . renderconjs has the following type: lists containing elements .
those elements have the following types:

  - renderbutton (optional): . renderbutton has the following type: lists containing elements .
those elements have the following types:

  - rendericon (optional): . rendericon has the following type: lists containing elements .
those elements have the following types:

  - renderbuttongroup (optional): . renderbuttongroup has the following type: lists containing elements .
those elements have the following types:

  - renderswitch (optional): . renderswitch has the following type: lists containing elements .
those elements have the following types:

  - renderprovider (optional): . renderprovider has the following type: lists containing elements .
those elements have the following types:

  - rendervaluesources (optional): . rendervaluesources has the following type: lists containing elements .
those elements have the following types:

  - renderfieldsources (optional): . renderfieldsources has the following type: lists containing elements .
those elements have the following types:

  - renderconfirm (optional): . renderconfirm has the following type: lists containing elements .
those elements have the following types:

  - useconfirm (optional)
  - rendersize (a value equal to: 'small', 'large', 'medium'; optional)
  - renderitem (optional): . renderitem has the following type: lists containing elements .
those elements have the following types:

  - dropdownplacement (a value equal to: 'topleft', 'topcenter', 'topright', 'bottomleft', 'bottomcenter', 'bottomright'; optional)
  - groupactionsposition (a value equal to: 'topleft', 'topcenter', 'topright', 'bottomleft', 'bottomcenter', 'bottomright'; optional)
  - showlabels (logical; optional)
  - maxlabelslength (numeric; optional)
  - customfieldselectprops (optional): . customfieldselectprops has the following type: list with named elements and values of type lists containing elements .
those elements have the following types:

  - customoperatorselectprops (optional): . customoperatorselectprops has the following type: list with named elements and values of type lists containing elements .
those elements have the following types:

  - renderbeforewidget (optional): . renderbeforewidget has the following type: lists containing elements .
those elements have the following types:

  - renderafterwidget (optional): . renderafterwidget has the following type: lists containing elements .
those elements have the following types:

  - renderbeforeactions (optional): . renderbeforeactions has the following type: lists containing elements .
those elements have the following types:

  - renderafteractions (optional): . renderafteractions has the following type: lists containing elements .
those elements have the following types:

  - renderbeforecasevalue (optional): . renderbeforecasevalue has the following type: lists containing elements .
those elements have the following types:

  - renderaftercasevalue (optional): . renderaftercasevalue has the following type: lists containing elements .
those elements have the following types:

  - renderruleerror (optional): . renderruleerror has the following type: lists containing elements .
those elements have the following types:

  - renderswitchprefix (character; optional)
  - defaultsliderwidth (character; optional)
  - defaultselectwidth (character; optional)
  - defaultsearchwidth (character; optional)
  - defaultmaxrows (numeric; optional)
  - operators (list with named elements and values of type logical | numeric | character | named list | unnamed list; required)
  - widgets (list with named elements and values of type logical | numeric | character | named list | unnamed list; required)
  - conjunctions (required): . conjunctions has the following type: list with named elements and values of type lists containing elements 'label', 'formatconj', 'sqlformatconj', 'spelformatconj', 'mongoconj', 'jsonlogicconj', 'sqlconj', 'spelconj', 'spelconjs', 'reversedconj'.
those elements have the following types:
  - label (character; required)
  - formatconj (required): . formatconj has the following type: lists containing elements .
those elements have the following types:

  - sqlformatconj (required): . sqlformatconj has the following type: lists containing elements .
those elements have the following types:

  - spelformatconj (required): . spelformatconj has the following type: lists containing elements .
those elements have the following types:

  - mongoconj (character; required)
  - jsonlogicconj (character; optional)
  - sqlconj (character; optional)
  - spelconj (character; optional)
  - spelconjs (list of characters; optional)
  - reversedconj (character; optional)
  - types (required): . types has the following type: list with named elements and values of type lists containing elements 'valuesources', 'defaultoperator', 'widgets', 'mainwidget', 'excludeoperators', 'mainwidgetprops'.
those elements have the following types:
  - valuesources (list of a value equal to: 'field', 'func', 'value', 'const's; optional)
  - defaultoperator (character; optional)
  - widgets (required): . widgets has the following type: list with named elements and values of type lists containing elements 'widgetprops', 'opprops', 'operators', 'defaultoperator', 'valuelabel', 'valueplaceholder'.
those elements have the following types:
  - widgetprops (logical | numeric | character | named list | unnamed list; optional)
  - opprops (logical | numeric | character | named list | unnamed list; optional)
  - operators (list of characters; optional)
  - defaultoperator (character; optional)
  - valuelabel (character; optional)
  - valueplaceholder (character; optional)
  - mainwidget (character; optional)
  - excludeoperators (list of characters; optional)
  - mainwidgetprops (logical | numeric | character | named list | unnamed list; optional)
  - fields (required): . fields has the following type: list with named elements and values of type lists containing elements 'label2', 'operators', 'defaultoperator', 'excludeoperators', 'type', 'preferwidgets', 'valuesources', 'funcs', 'tablename', 'fieldname', 'jsonlogicvar', 'fieldsettings', 'defaultvalue', 'widgets', 'mainwidgetprops', 'hideforselect', 'hideforcompare', 'listvalues', 'allowcustomvalues', 'isspelvariable', 'label', 'tooltip'.
those elements have the following types:
  - label2 (character; optional)
  - operators (list of characters; optional)
  - defaultoperator (character; optional)
  - excludeoperators (list of characters; optional)
  - type (character; required)
  - preferwidgets (list of characters; optional)
  - valuesources (list of a value equal to: 'field', 'func', 'value', 'const's; optional)
  - funcs (list of characters; optional)
  - tablename (character; optional)
  - fieldname (character; optional)
  - jsonlogicvar (character; optional)
  - fieldsettings (optional): . fieldsettings has the following type: lists containing elements 'min', 'max', 'step', 'marks', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - min (numeric; optional)
  - max (numeric; optional)
  - step (numeric; optional)
  - marks (list with named elements and values of type character; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'timeformat', 'dateformat', 'valueformat', 'use12hours', 'usekeyboard', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - timeformat (character; optional)
  - dateformat (character; optional)
  - valueformat (character; optional)
  - use12hours (logical; optional)
  - usekeyboard (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'listvalues', 'allowcustomvalues', 'showsearch', 'searchplaceholder', 'showcheckboxes', 'asyncfetch', 'useloadmore', 'useasyncsearch', 'forceasyncsearch', 'fetchselectedvaluesoninit', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - listvalues (logical | numeric | character | named list | unnamed list; optional)
  - allowcustomvalues (logical; optional)
  - showsearch (logical; optional)
  - searchplaceholder (character; optional)
  - showcheckboxes (logical; optional)
  - asyncfetch (optional): . asyncfetch has the following type: lists containing elements .
those elements have the following types:

  - useloadmore (logical; optional)
  - useasyncsearch (logical; optional)
  - forceasyncsearch (logical; optional)
  - fetchselectedvaluesoninit (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'listvalues', 'allowcustomvalues', 'showsearch', 'searchplaceholder', 'showcheckboxes', 'asyncfetch', 'useloadmore', 'useasyncsearch', 'forceasyncsearch', 'fetchselectedvaluesoninit', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - listvalues (logical | numeric | character | named list | unnamed list; optional)
  - allowcustomvalues (logical; optional)
  - showsearch (logical; optional)
  - searchplaceholder (character; optional)
  - showcheckboxes (logical; optional)
  - asyncfetch (optional): . asyncfetch has the following type: lists containing elements .
those elements have the following types:

  - useloadmore (logical; optional)
  - useasyncsearch (logical; optional)
  - forceasyncsearch (logical; optional)
  - fetchselectedvaluesoninit (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'treevalues', 'treeexpandall', 'treeselectonlyleafs', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - treevalues (optional): . treevalues has the following type: list with named elements and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disablecheckbox', 'checkable', 'path', 'value', 'title', 'iscustom', 'ishidden', 'grouptitle', 'rendertitle'.
those elements have the following types:
  - children (list of logical | numeric | character | named list | unnamed lists; optional)
  - parent (logical | numeric | character | named list | unnamed list; optional)
  - disabled (logical; optional)
  - selectable (logical; optional)
  - disablecheckbox (logical; optional)
  - checkable (logical; optional)
  - path (list of characters; optional)
  - value (character | numeric; required)
  - title (character; optional)
  - iscustom (logical; optional)
  - ishidden (logical; optional)
  - grouptitle (character; optional)
  - rendertitle (character; optional)
  - treeexpandall (logical; optional)
  - treeselectonlyleafs (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'treevalues', 'treeexpandall', 'treeselectonlyleafs', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - treevalues (optional): . treevalues has the following type: list with named elements and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disablecheckbox', 'checkable', 'path', 'value', 'title', 'iscustom', 'ishidden', 'grouptitle', 'rendertitle'.
those elements have the following types:
  - children (list of logical | numeric | character | named list | unnamed lists; optional)
  - parent (logical | numeric | character | named list | unnamed list; optional)
  - disabled (logical; optional)
  - selectable (logical; optional)
  - disablecheckbox (logical; optional)
  - checkable (logical; optional)
  - path (list of characters; optional)
  - value (character | numeric; required)
  - title (character; optional)
  - iscustom (logical; optional)
  - ishidden (logical; optional)
  - grouptitle (character; optional)
  - rendertitle (character; optional)
  - treeexpandall (logical; optional)
  - treeselectonlyleafs (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'labelyes', 'labelno', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - labelyes (character; optional)
  - labelno (character; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'maxlength', 'maxrows', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - maxlength (numeric; optional)
  - maxrows (numeric; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional)
  - defaultvalue (logical | numeric | character | named list | unnamed list; optional)
  - widgets (optional): . widgets has the following type: list with named elements and values of type lists containing elements 'widgetprops', 'opprops', 'operators', 'defaultoperator', 'valuelabel', 'valueplaceholder'.
those elements have the following types:
  - widgetprops (logical | numeric | character | named list | unnamed list; optional)
  - opprops (logical | numeric | character | named list | unnamed list; optional)
  - operators (list of characters; optional)
  - defaultoperator (character; optional)
  - valuelabel (character; optional)
  - valueplaceholder (character; optional)
  - mainwidgetprops (logical | numeric | character | named list | unnamed list; optional)
  - hideforselect (logical; optional)
  - hideforcompare (logical; optional)
  - listvalues (logical | numeric | character | named list | unnamed list; optional)
  - allowcustomvalues (logical; optional)
  - isspelvariable (logical; optional)
  - label (character; optional)
  - tooltip (character; optional)
  - funcs (list with named elements and values of type logical | numeric | character | named list | unnamed list; optional)
  - ctx (list with named elements and values of type logical | numeric | character | named list | unnamed list; required). The config object. See the [Config](https://github.com/ukrbublik/react-awesome-query-builder/blob/master/CONFIG.adoc docs).}

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

\item{fields}{List with named elements and values of type lists containing elements 'label2', 'operators', 'defaultoperator', 'excludeoperators', 'type', 'preferwidgets', 'valuesources', 'funcs', 'tablename', 'fieldname', 'jsonlogicvar', 'fieldsettings', 'defaultvalue', 'widgets', 'mainwidgetprops', 'hideforselect', 'hideforcompare', 'listvalues', 'allowcustomvalues', 'isspelvariable', 'label', 'tooltip'.
those elements have the following types:
  - label2 (character; optional)
  - operators (list of characters; optional)
  - defaultoperator (character; optional)
  - excludeoperators (list of characters; optional)
  - type (character; required)
  - preferwidgets (list of characters; optional)
  - valuesources (list of a value equal to: 'field', 'func', 'value', 'const's; optional)
  - funcs (list of characters; optional)
  - tablename (character; optional)
  - fieldname (character; optional)
  - jsonlogicvar (character; optional)
  - fieldsettings (optional): . fieldsettings has the following type: lists containing elements 'min', 'max', 'step', 'marks', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - min (numeric; optional)
  - max (numeric; optional)
  - step (numeric; optional)
  - marks (list with named elements and values of type character; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'timeformat', 'dateformat', 'valueformat', 'use12hours', 'usekeyboard', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - timeformat (character; optional)
  - dateformat (character; optional)
  - valueformat (character; optional)
  - use12hours (logical; optional)
  - usekeyboard (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'listvalues', 'allowcustomvalues', 'showsearch', 'searchplaceholder', 'showcheckboxes', 'asyncfetch', 'useloadmore', 'useasyncsearch', 'forceasyncsearch', 'fetchselectedvaluesoninit', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - listvalues (logical | numeric | character | named list | unnamed list; optional)
  - allowcustomvalues (logical; optional)
  - showsearch (logical; optional)
  - searchplaceholder (character; optional)
  - showcheckboxes (logical; optional)
  - asyncfetch (optional): . asyncfetch has the following type: lists containing elements .
those elements have the following types:

  - useloadmore (logical; optional)
  - useasyncsearch (logical; optional)
  - forceasyncsearch (logical; optional)
  - fetchselectedvaluesoninit (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'listvalues', 'allowcustomvalues', 'showsearch', 'searchplaceholder', 'showcheckboxes', 'asyncfetch', 'useloadmore', 'useasyncsearch', 'forceasyncsearch', 'fetchselectedvaluesoninit', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - listvalues (logical | numeric | character | named list | unnamed list; optional)
  - allowcustomvalues (logical; optional)
  - showsearch (logical; optional)
  - searchplaceholder (character; optional)
  - showcheckboxes (logical; optional)
  - asyncfetch (optional): . asyncfetch has the following type: lists containing elements .
those elements have the following types:

  - useloadmore (logical; optional)
  - useasyncsearch (logical; optional)
  - forceasyncsearch (logical; optional)
  - fetchselectedvaluesoninit (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'treevalues', 'treeexpandall', 'treeselectonlyleafs', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - treevalues (optional): . treevalues has the following type: list with named elements and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disablecheckbox', 'checkable', 'path', 'value', 'title', 'iscustom', 'ishidden', 'grouptitle', 'rendertitle'.
those elements have the following types:
  - children (list of logical | numeric | character | named list | unnamed lists; optional)
  - parent (logical | numeric | character | named list | unnamed list; optional)
  - disabled (logical; optional)
  - selectable (logical; optional)
  - disablecheckbox (logical; optional)
  - checkable (logical; optional)
  - path (list of characters; optional)
  - value (character | numeric; required)
  - title (character; optional)
  - iscustom (logical; optional)
  - ishidden (logical; optional)
  - grouptitle (character; optional)
  - rendertitle (character; optional)
  - treeexpandall (logical; optional)
  - treeselectonlyleafs (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'treevalues', 'treeexpandall', 'treeselectonlyleafs', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - treevalues (optional): . treevalues has the following type: list with named elements and values of type lists containing elements 'children', 'parent', 'disabled', 'selectable', 'disablecheckbox', 'checkable', 'path', 'value', 'title', 'iscustom', 'ishidden', 'grouptitle', 'rendertitle'.
those elements have the following types:
  - children (list of logical | numeric | character | named list | unnamed lists; optional)
  - parent (logical | numeric | character | named list | unnamed list; optional)
  - disabled (logical; optional)
  - selectable (logical; optional)
  - disablecheckbox (logical; optional)
  - checkable (logical; optional)
  - path (list of characters; optional)
  - value (character | numeric; required)
  - title (character; optional)
  - iscustom (logical; optional)
  - ishidden (logical; optional)
  - grouptitle (character; optional)
  - rendertitle (character; optional)
  - treeexpandall (logical; optional)
  - treeselectonlyleafs (logical; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'labelyes', 'labelno', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - labelyes (character; optional)
  - labelno (character; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'maxlength', 'maxrows', 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - maxlength (numeric; optional)
  - maxrows (numeric; optional)
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional) | lists containing elements 'validatevalue', 'valueplaceholder'.
those elements have the following types:
  - validatevalue (optional): . validatevalue has the following type: lists containing elements .
those elements have the following types:

  - valueplaceholder (character; optional)
  - defaultvalue (logical | numeric | character | named list | unnamed list; optional)
  - widgets (optional): . widgets has the following type: list with named elements and values of type lists containing elements 'widgetprops', 'opprops', 'operators', 'defaultoperator', 'valuelabel', 'valueplaceholder'.
those elements have the following types:
  - widgetprops (logical | numeric | character | named list | unnamed list; optional)
  - opprops (logical | numeric | character | named list | unnamed list; optional)
  - operators (list of characters; optional)
  - defaultoperator (character; optional)
  - valuelabel (character; optional)
  - valueplaceholder (character; optional)
  - mainwidgetprops (logical | numeric | character | named list | unnamed list; optional)
  - hideforselect (logical; optional)
  - hideforcompare (logical; optional)
  - listvalues (logical | numeric | character | named list | unnamed list; optional)
  - allowcustomvalues (logical; optional)
  - isspelvariable (logical; optional)
  - label (character; optional)
  - tooltip (character; optional). The fields to populate the query builder. See the
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

