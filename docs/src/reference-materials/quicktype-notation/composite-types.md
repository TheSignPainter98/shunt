# Composite types {#composite-types}

This section covers all quicktype types which are composed of other types.

- [Optional types -- `?type`](#option)
- [Structs -- `{field: type}`](#structs)
- [Mappings -- `{type->type}`](#mappings)
- [Sets -- `{type}`](#sets)
- [Arrays -- `[type]`](#arrays)
- [Tuples -- `(type, type)`](#tuples)
- [Functions and methods -- `(type) -> type`, `(type) => type`](#functions-and-methods)
- [Type unions -- `type|type`](#unions)
- [Type intersections -- `type+type`](#intersections)

## Optional types -- `?type` {#option}#

An option is a Lua value which is either `nil` or which implements the specified type.

Examples:

- `nil` implements `?number`
- `123` implements `?number`
- `'hello'` does _not_ implement `?number`

## Structs -- `{field: type}` {#structs}

A struct is a Lua table in which all specified fields have the specified types.
Multiple fields may be specified as a comma-separated lists---`{field_1: type_1, field_2: type_2}`.

Examples:

- `{hello = 'world'}` implements `{hello: string}`
- `{}` implements `{hello: nil}`
- `{hello = 123}` does _not_ implement `{hello: string}`
- `{hello = "world"}` does _not_ implement `{hello: nil}`

The metatable of a struct can be constrained using the `<>` field.
For example, the constraint `{<>: { __add: function }, hello: string}` accepts structs with `hello` containing a string and whose metatable’s `__add` field contains a function.

## Mappings -- `{type->type}` {#mappings}

A mapping is a Lua table in which all keys have the same type and in which all values have the same type. The key type and value type may differ.

Examples:

- `{}` implements `{string -> number}`
- `{hello = 1}` implements `{string -> number}`
- `{hello = 'world'}` does _not_ implement `{string -> number}`

The metatable of a mapping can be constrained using the `<>` field.
For example, the constraint `{<>: { __add: function }, string -> number}` accepts mappings from strings to numbers whose metatable’s `__add` field contains a function.

## Sets -- `{type}` {#sets}

A set is a Lua table in which all keys have the specified type and in which all values are truthy (i.e. not `false` or `nil`).

Examples:

- `{}` implements `{string}`
- `{'hello' = true}` implements `{string}`
- `{‘hello’ = false}` does _not_ implement `{string}`
- `{[123] = true}` does _not_ implement `{string}`

The metatable of a set can be constrained using the `<>` field.
For example, the constraint `{<>: { __add: function }, string}` accepts sets of strings whose metatable’s `__add` field contains a function.

## Arrays -- `[type]` {#arrays}

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

## Tuples -- `(type, type)` {#tuples}

A tuple is a Lua table in which the fields _1,_ ..., _n_ have the respective, specified types.

Examples:

- `{}` implements `()`
- `{'hello'}` implements `(string)`
- `{'hello', 'world'}` implements `(string, string)`
- `{'hello', 123}` implements `(string, number)`
- `{123, 123}` does _not_ implement `(string, number)`

Metatable constraints are not currently supported on tables.

## Functions and methods -- `(type) -> type`, `(type) => type` {#functions-and-methods}

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

## Type unions -- `type|type` {#unions}

A value implements a type union if and only if it implements at least one type in the union.

Examples:

- `'hello'` implements `string|number`
- `1` implements `string|number`
- `'hello'` implements `"hello"|"world"`
- `true` does _not_ implement `string|number`
- `'how do?'` does _not_ implement `"hello"|"world"`

## Type intersections -- `type+type` {#intersections}

A value implements a type intersection if and only if it implements all types in the intersection.

Examples:

- `'hello'` implements `string+"hello"`
- `{hello = 'world', foo = 'bar'}` implements `{hello: string} + {foo: string}`
- `{'hello', 'world'}` implements `[string]+{number}`
- Nothing implements `string+number`

[^len-note]: The return value of Lua’s `#` operator when applied to tables containing keys which are outside of the consecutive 1 to _n_ sequence (the array condition) is not specified in the standard.
