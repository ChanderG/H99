-- remove continuous duplicates from a list

--vanilla recursion
c1 :: (Ord a) => [a] -> [a]
c1 [] = []
c1 [x] = [x]
c1 xs = case compare e1 e2 of
  EQ -> e1 : c1 t2
  _  -> e1 : c1 t1
  where
  e1 = head xs
  t1 = tail xs
  e2 = head t1
  t2 = tail t1

-- custom data type and helper
data OneOrBoth a = One a | Both a a
  deriving (Eq, Ord)

instance (Show a) => Show (OneOrBoth a) where
  show (One a) = "One " ++ (show a)
  show (Both a1 a2) = "Both " ++ (show a1) ++ " , " ++ (show a2)

h1 :: (Ord a) => a -> a -> OneOrBoth a
h1 a1 a2 = case compare a1 a2 of
  EQ -> One a1
  _  -> Both a1 a2 

