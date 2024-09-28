

toRoman :: Integer -> String
toRoman num
    | num == 0 = ""
    | num == 1 = "I"
    | num < 4 = 'I' : toRoman (num - 1)
    | num == 4 = 'I' : 'V' : toRoman (num - 4)
    | num < 9 = 'V' : toRoman (num - 5)
    | num == 9 = 'I' : 'X' : toRoman (num - 9)
    | num < 40 = 'X' : toRoman (num - 10)
    | num < 50 = 'X' : 'L' : toRoman (num - 40)
    | num < 90 = 'L' : toRoman (num - 50)
    | num < 100 = 'X' : 'C' : toRoman (num - 90)
    | num == 100 = 'C' : toRoman (num - 100)
    | otherwise = 'C' : toRoman (num - 100) 
