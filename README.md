constant_propagator
===================

This code takes in a syntax tree and simplifies it, replacing expressions with their equivalent value if their children are all immutable symbols.

For Example, a simplification of the following simple expression will be made:

            +
           / \
          /   \
         -     *
        / \   / \
       /   \ 9   x
      ^     4
     / \
    2   3
_______________________________
            +
           / \
          /   \
         4     *
              / \
             9   x

Token types will be operators, variables, conditionals, and terminals(Constants).

Conditonals will take form of the ternary operator(test?true:false)

If a node simplifies, then operators will be replaced with their operation on their children and conditionals will be replaced by the subexpression corresponding to the test's result.
