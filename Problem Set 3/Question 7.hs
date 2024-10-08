-- Exercise 7 
-- Define a recursive, polymorphic algebraic data type Tree
-- which corresponds to the above definition, and define a function
-- incrementTree :: Tree Integer -> Tree Integer
-- which adds one to every Integer contained in a tree.\

data Tree a where
    Leaf:: Tree a
    Node:: a -> Tree a -> Tree a -> Tree a
    deriving (Eq, Show)

incrementTree :: Tree Integer -> Tree Integer
incrementTree Leaf = Leaf
incrementTree (Node num left right) = Node (num + 1) (incrementTree left) (incrementTree right)