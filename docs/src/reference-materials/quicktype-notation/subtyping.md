# Subtyping

A type _T_ is a subtype of a type _U_ if and only if all values of type _T_ implement _U._
It is possible to use such a _T_ in any place which accepts a _U._

Examples:

- `{hello: string}` is a subtype of `{string->string}`
- `[string]` is a subtype of `{number->string}`
- `(string, string)` is a subtype of `[string]`
- `(string|number) -> "hello"` is a subtype of `(string) -> string`
