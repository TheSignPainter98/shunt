# Atomic types

This section covers all quicktype types which cannot be broken down:

- [Primitive types -- `boolean`, `string`](#primitive)
- [Universal type -- `any`](#any)
- [Existential type -- `some`](#some)
- [Value-types -- `"str"`, `123`](#value-types)
- [Never type -- `!`](#never)

## Primitive types -- `boolean`, `string` {#primitive}

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

## Never type -- `!` {#never}

The never type represents a value which can never exist.
This is typically only useful to represent [functions][functions] which never return.
E.g. a function which accepts no arguments and which either loops forever or kills the program implements `() -> !`.

[functions]: ./composite-types.md#functions-and-methods
