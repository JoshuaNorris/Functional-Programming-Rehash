-- Exercise 6 Using our definition of List from class, implement a
-- function of type

-- List (Either a b) -> (List a, List b)
-- which separates out a list of Either a b values into a list of all the
-- Left values and a list of all the Right values.

data List a where
  Empty :: List a
  Cons :: a -> List a -> List a
  deriving (Eq, Show)

listSplit :: List (Either a b) -> (List a, List b)