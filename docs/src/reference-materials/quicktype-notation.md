# Quicktype notation

The quicktype notation is used to specify type constraints.

- [Primitive types -- `boolean`, `string`](#primitives)
- [Universal type -- `any`](#any)
- [Existential type -- `some`](#some)
- [Value-types -- `"str"`, `123`](#value-types)
- [The never type -- `!`](#never)
- [Type aliases -- `Named`](#type-aliases)
- [Composite types](#composite-types)
  - [Optional types -- `?type`](#option)
  - [Structs -- `{field: type}`](#structs)
  - [Mappings -- `{type->type}`](#mappings)
  - [Sets -- `{type}`](#sets)
  - [Arrays -- `[type]`](#arrays)
  - [Tuples -- `(type, type)`](#tuples)
  - [Functions and methods -- `(type) -> type`, `(type) => type`](#functions-and-methods)
  - [Type unions -- `type|type`](#unions)
  - [Type intersections -- `type+type`](#intersections)
- [Subtyping](#subtyping)

## Primitive types -- `boolean`, `string` {#primitives}

All values returned from Lua’s `type` function are valid quicktype types.
All Lua 5.1 types are supported:

- `nil`
- `number`
- `string`
- `table`
- `function`
- `thread`
- `userdata`

## Universal type -- `any` {#any}

A value of `any` type, including `nil`.

Examples:

- `'hello'` implements `any`
- `123` implements `any`
- `nil` implements `any`

## Existential type -- `some` {#some}

A value implements `some` if it is not `nil`.

Examples:

- `'hello'` implements `some`
- `123` implements `some`
- `nil` does _not_ implement `some`

## Value-types -- `"str"`, `123` {#value-types}

A value implements a value-type if it is equal to the expected value.
Only strings and numbers are supported as value-types.

Examples:

- `'hello'` implements `"hello"`
- `123` implements `123`
- `'hello'` does _not_ implement `"world"`

## The never type -- `!` {#never}

The never type represents a value which can never exist. This is typically only useful to represent functions which never return. E.g. a function which accepts no arguments and which either loops forever or kills the program implements `() -> !`.

## Type aliases -- `Named` {#type-aliases}

A type alias is a name given to a quicktype type.
Type aliases always start with an uppercase letter.
For example, let the type alias `MyNumber` expands to `number`. The value `123` is both a `number` _and_ a `MyNumber`.

## Composite types {#composite-types}

The following types combine other types into more expressive constraints.

## Optional types -- `?type` {#option}

An option is a Lua value which is either `nil` or which implements the specified type.

Examples:

- `nil` implements `?number`
- `123` implements `?number`
- `'hello'` does _not_ implement `?number`

### Structs -- `{field: type}` {#structs}

A struct is a Lua table in which all specified fields have the specified types.
Multiple fields may be specified as a comma-separated lists---`{field_1: type_1, field_2: type_2}`.

Examples:

- `{hello = 'world'}` implements `{hello: string}`
- `{}` implements `{hello: nil}`
- `{hello = 123}` does _not_ implement `{hello: string}`
- `{hello = "world"}` does _not_ implement `{hello: nil}`

The metatable of a struct can be constrained using the `<>` field.
For example, the constraint `{<>: { __add: function }, hello: string}` accepts structs with `hello` containing a string and whose metatable’s `__add` field contains a function.

### Mappings -- `{type->type}` {#mappings}

A mapping is a Lua table in which all keys have the same type and in which all values have the same type. The key type and value type may differ.

Examples:

- `{}` implements `{string -> number}`
- `{hello = 1}` implements `{string -> number}`
- `{hello = 'world'}` does _not_ implement `{string -> number}`

The metatable of a mapping can be constrained using the `<>` field.
For example, the constraint `{<>: { __add: function }, string -> number}` accepts mappings from strings to numbers whose metatable’s `__add` field contains a function.

### Sets -- `{type}` {#sets}

A set is a Lua table in which all keys have the specified type and in which all values are truthy (i.e. not `false` or `nil`).

Examples:

- `{}` implements `{string}`
- `{'hello' = true}` implements `{string}`
- `{‘hello’ = false}` does _not_ implement `{string}`
- `{[123] = true}` does _not_ implement `{string}`

The metatable of a set can be constrained using the `<>` field.
For example, the constraint `{<>: { __add: function }, string}` accepts sets of strings whose metatable’s `__add` field contains a function.

### Arrays -- `[type]` {#arrays}

An array is a Lua table in which there exists a consecutive sequence of numeric keys starting at 1 and ending at some _n_ for which all values have the specified type.
Further, the length of the table (defined by Lua’s `#` operator) is equal to _n._

Examples:

- `{}` implements `[string]`
- `{'hello', 'world'}` implements `[string]`
- `{123}` does _not_ implement `[string]`
- `{'hello', 123}` does _not_ implement `[string]`
- `{[1] = 'hello', [3] = 123}` implements `[string]` _only_ if Lua reports the length of this table as 1 or less[^len-note]

The metatable of an array can be constrained using the `<>` field.
For example, the constraint `[<>: { __add: function }, string]` accepts sets of strings whose metatable’s `__add` field contains a function.

### Tuples -- `(type, type)` {#tuples}

A tuple is a Lua table in which the fields _1,_ ..., _n_ have the respective, specified types.

Examples:

- `{}` implements `()`
- `{'hello'}` implements `(string)`
- `{'hello', 'world'}` implements `(string, string)`
- `{'hello', 123}` implements `(string, number)`
- `{123, 123}` does _not_ implement `(string, number)`

Metatable constraints are not currently supported on tables.

### Functions and methods -- `(type) -> type`, `(type) => type` {#functions-and-methods}

A function is a Lua value which may be called, which expects to take parameters of the types specified and returns the specified values.
A function is specified using the `->` arrow.

A method is a special case of a function in which the first argument must be `some`.
A method is specified using the `=>` arrow.

Examples:

- `() -> <>` represents a function which takes no parameters and returns no values
- `() -> number` represents a function which returns a single number
- `(number) -> number` represents a function which takes a single number and returns a single number
- `() -> <boolean, string>` represents a function which takes no parameters and returns a boolean and a string
- `() -> string...` represents a function which takes no parameters and returns any number of strings
- `(userdata, string...) -> <boolean, table...>` represents a function which takes a userdata followed by any number of strings and returns a boolean followed by any number of tables
- `() => <>` represents a function which takes a non-`nil` parameter and returns no values.
- `(string) => <>` represents a function which takes a non-`nil` parameter followed by a string and returns no values.
- `() -> !` represents a function which takes no parameters and never returns

### Type unions -- `type|type` {#unions}

A value implements a type union if and only if it implements at least one type in the union.

Examples:

- `'hello'` implements `string|number`
- `1` implements `string|number`
- `'hello'` implements `"hello"|"world"`
- `true` does _not_ implement `string|number`
- `'how do?'` does _not_ implement `"hello"|"world"`

### Type intersections -- `type+type` {#intersections}

A value implements a type intersection if and only if it implements all types in the intersection.

Examples:

- `'hello'` implements `string+"hello"`
- `{hello = 'world', foo = 'bar'}` implements `{hello: string} + {foo: string}`
- `{'hello', 'world'}` implements `[string]+{number}`
- Nothing implements `string+number`

## Subtyping {#subtyping}

A type _T_ is a subtype of a type _U_ if and only if all values of type _T_ implement _U._
It is possible to use such a _T_ in any place which accepts a _U._

Examples:

- `{hello: string}` is a subtype of `{string->string}`
- `[string]` is a subtype of `{number->string}`
- `(string, string)` is a subtype of `[string]`
- `(string|number) -> "hello"` is a subtype of `(string) -> string`

[^len-note]: The return value of Lua’s `#` operator when applied to tables containing keys which are outside of the consecutive 1 to _n_ sequence (the array condition) is not specified in the standard.
