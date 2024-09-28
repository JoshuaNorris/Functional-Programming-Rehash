-- Using the functions from Question 3, along with the
-- swap function from class, implement each of the following functions, using only the given
-- functions and the function composition operator

dup :: Integer -> (Integer, Integer)
dup x = (x, x)

add :: (Integer, Integer) -> Integer
add (x, y) = x + y

doubleFst :: (Integer, Integer) -> (Integer, Integer)
doubleFst (x, y) = (2 * x, y)

swap :: (Integer, Integer) -> (Integer, Integer)
swap (x, y) = (y, x)

--------------------------------------------------------------

double :: Integer -> Integer
double = add . dup

dectuple :: Integer -> Integer
dectuple = add . doubleFst . doubleFst . dup . double