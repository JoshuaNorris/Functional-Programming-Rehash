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
listSplit lst = listSplitHelper lst Empty Empty

listSplitHelper :: List (Either a b) -> List a -> List b -> (List a, List b)
listSplitHelper Empty ls rs = (ls, rs)
listSplitHelper (Cons(Left a) lst) ls rs = listSplitHelper lst (Cons a ls) rs
listSplitHelper (Cons(Right b) lst) ls rs = listSplitHelper lst ls (Cons b rs)