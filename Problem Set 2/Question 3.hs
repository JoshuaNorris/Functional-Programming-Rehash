
dup :: Integer -> (Integer, Integer)
dup x = (x, x)

add :: (Integer, Integer) -> Integer
add (x, y) = x + y

doubleFst :: (Integer, Integer) -> (Integer, Integer)
doubleFst (x, y) = (2 * x, y)