import Text.XHtml (base)

-- QUESTION 1 Implement a Haskell function nand :: Bool-> Bool-> Bool corresponding to logical NAND (negated conjunction).
nand :: Bool -> Bool -> Bool
nand True True = False
nand True False = True
nand False True = True
nand False False = False

-- Used this for testing
boolToString :: Bool -> String
boolToString True = "TRUE"
boolToString False = "FALSE"

-- QUESTION 2 Define a function to convert small letters to capitals without using toUpper
myToUpper :: String -> String


main = putStrLn (boolToString (nand False True))