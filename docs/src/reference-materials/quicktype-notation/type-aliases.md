# Type aliases

A type alias is a name given to a quicktype type.
Type aliases always start with an uppercase letter.

For example, a `BinaryTree` could be defined as:

```moonscript
{ value: any }
| { left_child: BinaryTree, right_child: BinaryTree }
```

A type alias may have a _disambiguator_ before a literal `.` in its name.
For example, a station in a marshal’s world-model could be differentiated from a Create station peripheral by calling one `marshal.Station` and the other `peripheral.Station`.
