-- Write a function
-- isBST :: Tree Integer -> Bool
-- which checks whether the given Tree is a valid BST


data Tree a where
    Leaf:: Tree a
    Node:: a -> Tree a -> Tree a -> Tree a
    deriving (Eq, Show)

-- isBST :: Tree Integer -> Bool
-- isBST Leaf = True
-- isBST (Node x left right)