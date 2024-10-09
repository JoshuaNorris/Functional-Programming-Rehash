-- Exercise 8 Define a function
-- treeSize :: Tree a -> Integer
-- which computes the size of a tree, defined as the number of nodes

data Tree a where
    Leaf:: Tree a
    Node:: a -> Tree a -> Tree a -> Tree a
    deriving (Eq, Show)

treeSize :: Tree a -> Integer
treeSize Leaf = 0
treeSize (Node a left right) = 1 + treeSize left + treeSize right