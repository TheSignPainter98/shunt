# Subtyping

A type _T_ is a subtype of a type _U_ if and only if all values of type _T_ implement _U._
It is possible to use such a _T_ in any place which accepts a _U._

Examples:

- `{hello: string}` is a subtype of `{string->string}`
- `[string]` is a subtype of `{number->string}`
- `(string, string)` is a subtype of `[string]`
- `(string|number) -> "hello"` is a subtype of `(string) -> string`

By design, quicktype always accepts subtypes.
For example, on many Lua distributions the length (`#`) of a [struct][structs] is always 0.
In such environments, all struct types are a subtype of all array types.

[structs]: ./composite-types.md#structs
