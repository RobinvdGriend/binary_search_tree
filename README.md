# BinarySearchTree

This is a limited implementation of a binary search tree in Ruby using a node class with references to its child nodes. The node class contains functions for node insertion and searching and a helper method BinarySearchTree::build_tree is included to easily build a tree from an array of values.

## Using this library
To use this library in your code simply:

```ruby
require "path/to/lib/binary_search_tree.rb"
```
This will automatically require all the class files necessary for the library.

## Implementation
The binary search tree does not use self-balancing. To avoid severely unbalanced or even degenerate tree the array passed to BinarySearchTree::build_tree is randomized. This implementation does not support deletion of nodes.
