# Type aliases

A type alias is a name given to a quicktype type.
Type aliases always start with an uppercase letter.

For example, a `BinaryTree` could be defined as:

```moonscript
{ value: any }
| { left_child: BinaryTree, right_child: BinaryTree }
```
