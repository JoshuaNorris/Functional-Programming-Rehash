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


main = putStrLn (boolToString (nand True False))