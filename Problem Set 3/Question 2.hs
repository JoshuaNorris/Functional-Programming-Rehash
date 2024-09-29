-- In class, we defined an algebraic data type Shape as follows:
type Coords = (Double, Double)
data Shape where
    Circle :: Coords -> Double -> Shape
    Rect :: Coords -> Coords -> Shape

-- A
-- Write a function which calculates the perimeter of a shape.
perimeter :: Shape -> Double

-- B
-- Write a function which translates any shape horizontally
-- by the given amount.
translateX :: Double -> Shape -> Shape

-- C
-- Now add a constructor to represent squares, and extend the two
-- previous functions to handle squares as well. Make sure that you
-- design the fields of the square constructor appropriately so that it
-- can only represent squares.