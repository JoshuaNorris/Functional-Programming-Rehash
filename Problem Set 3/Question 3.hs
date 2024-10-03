-- Consider the following grammar for propositional logic expressions (without variables):
-- ϕ ::= T | F | ¬ϕ | ϕ ∧ ϕ | ϕ ∨ ϕ

-- That is, a propositional logic expression ϕ can be either a constant
-- T or F (representing true and false, respectively), the negation of an
-- expression, or the conjuction(&&) or disjunction(||) of two expressions.
-- Define a Haskell algebraic data type Prop to represent such propositional logic expressions, and implement a function
-- eval :: Prop -> Bool to evaluate propositions according to the usual rules of propositional logic


data Prop where
    Constant :: Bool -> Prop
    Negation :: Bool -> Prop
    Conjunction :: Bool -> Bool -> Prop
    Disjunction :: Bool -> Bool -> Prop


eval :: Prop -> Bool
eval (Constant bool) = bool
eval (Negation bool) = not bool
eval (Conjunction bool1 bool2) = bool1 && bool2
eval (Disjunction bool1 bool2) = bool1 || bool2
