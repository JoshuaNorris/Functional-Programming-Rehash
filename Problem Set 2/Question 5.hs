

isqrt :: Integer -> Integer
isqrt input
    | input == 0 = 1
    | input == 1 = 1
    | otherwise = isqrtHelper input (input `div` 2)

isqrtHelper :: Integer -> Integer -> Integer
isqrtHelper input x
    | (x * x <= input) && ((x+1) * (x+1)) > input = x
    | x * x < input = isqrtHelper input (x + 1)
    | x * x > input = isqrtHelper input (x - 1)