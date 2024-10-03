-- Exercise 4 The standard Haskell library defines a data type
-- data Maybe a where
-- Nothing :: Maybe a
-- Just :: a -> Maybe a

-- It is typically used to model potential failure: a value of type Maybe a
-- might contain a value of type a, or it might be Nothing. Implement
-- each of the following functions:

-- (a) add :: Maybe Int -> Maybe Int -> Maybe Int, which tries to
-- add two numbers, but returns Nothing if either of its arguments
-- is.

add :: Maybe Int -> Maybe Int -> Maybe Int
add Nothing _ = Nothing
add _ Nothing = Nothing
add (Just x) (Just y) = Just (x+y)

-- (b) divide :: Integer -> Integer -> Maybe Integer, which tries
-- to compute the integer quotient of its two arguments, but fails if
-- the second argument is zero.

divide :: Integer -> Integer -> Maybe Integer
divide x 0 = Nothing
divide x y = Just (div x y)

-- (c) collapse :: Maybe (Maybe a) -> Maybe a, which returns a
-- value of type a (wrapped in Just) if at all possible, or Nothing
-- otherwise.

collapse :: Maybe (Maybe a) -> Maybe a
collapse Nothing = Nothing
collapse (Just Nothing) = Nothing
collapse (Just (Just x)) = Just x
