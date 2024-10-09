-- Exercise 9 Implement a function
-- bstInsert :: Integer -> Tree Integer -> Tree Integer.
-- Given an integer i and a valid BST, bstInsert should produce another valid BST which contains i. If the input BST already contains i,
-- it should be returned unchanged.

data Tree a where
    Leaf:: Tree a
    Node:: a -> Tree a -> Tree a -> Tree a
    deriving (Eq, Show)

bstInsert :: Integer -> Tree Integer -> Tree Integer
bstInsert input Leaf = Node input Leaf Leaf
bstInsert input (Node x left right)
    | input >= x = Node x left (bstInsert input right)
    | input < x = Node x (bstInsert input left) right