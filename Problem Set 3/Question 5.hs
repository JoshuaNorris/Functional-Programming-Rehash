-- Exercise 5 The standard Haskell library also defines a data type
-- data Either a b where
-- Left :: a -> Either a b
-- Right :: b -> Either a b

-- Implement a function of type
-- (a, Either b c) -> Either (a,b) (a,c)

splitEither :: a -> Either b c -> Either (a,b) (a,c)
splitEither a (Left b) = Left (a,b)
splitEither a (Right c) = Right (a,c)