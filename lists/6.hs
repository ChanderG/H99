-- palindrome checker

-- simple rev check
p1 :: Eq a => [a] -> Bool
p1 xs = xs == reverse xs

-- vanilla recursion
p2 :: Eq a => [a] -> Bool
p2 [] = True
p2 [_] = True
p2 xs = ((head xs) == (last xs)) && (p2 $ init $ tail $ xs)
