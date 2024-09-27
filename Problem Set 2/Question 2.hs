-- QUESTION 2 Define a function to convert small letters to capitals without using toUpper
myToUpper :: String -> String
myToUpper = map charToUpper


main :: IO ()
main = putStrLn (myToUpper "make me uppercase")



charToUpper :: Char -> Char
charToUpper 'a' = 'A'
charToUpper 'b' = 'B'
charToUpper 'c' = 'C'
charToUpper 'd' = 'D'
charToUpper 'e' = 'E'
charToUpper 'f' = 'F'
charToUpper 'g' = 'G'
charToUpper 'h' = 'H'
charToUpper 'i' = 'I'
charToUpper 'j' = 'J'
charToUpper 'k' = 'K'
charToUpper 'l' = 'L'
charToUpper 'm' = 'M'
charToUpper 'n' = 'N'
charToUpper 'o' = 'O'
charToUpper 'p' = 'P'
charToUpper 'q' = 'Q'
charToUpper 'r' = 'R'
charToUpper 's' = 'S'
charToUpper 't' = 'T'
charToUpper 'u' = 'U'
charToUpper 'v' = 'V'
charToUpper 'w' = 'W'
charToUpper 'x' = 'X'
charToUpper 'y' = 'Y'
charToUpper 'z' = 'Z'
charToUpper x = x