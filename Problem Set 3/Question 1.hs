data T where
    X :: Bool -> T
    Y :: T
    Z :: T -> T

--List at least five different values of type T.
t1, t2, t3, t4, t5 :: T
t1 = X False
t2 = X True
t3 = Y
t4 = Z t1
t5 = Z t2
