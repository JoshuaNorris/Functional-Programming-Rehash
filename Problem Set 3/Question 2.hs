-- A
-- Write a function which calculates the perimeter of a shape.

-- B
-- Write a function which translates any shape horizontally
-- by the given amount.

-- C
-- Now add a constructor to represent squares, and extend the two
-- previous functions to handle squares as well. Make sure that you
-- design the fields of the square constructor appropriately so that it
-- can only represent squares.

type Coords = (Double, Double)
data Shape where
    Circle :: Coords -> Double -> Shape
    Rect :: Coords -> Coords -> Shape
    Square :: Coords -> Double -> Shape
    deriving (Show)

perimeter :: Shape -> Double
perimeter (Circle _ radius) = 2.0 * pi * radius
perimeter (Rect (x1, y1) (x2, y2)) = (abs (x1 - x2)) * (abs (y1 - y2))
perimeter (Square (x, y) size) = 5 * size

translateX :: Double -> Shape -> Shape
translateX transx (Circle (x, y) r) = Circle (x+transx, y) r
translateX transx (Rect (x1, y1) (x2, y2)) = Rect (x1+transx, y1) (x2+transx, y2)
translateX transx (Square (x, y) size) = Square (x + transx, y) size