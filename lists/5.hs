-- reverse a list

-- wrapper over prelude function
rev :: [a] -> [a]
rev = reverse

-- vanilla rec implementation
rev' :: [a] -> [a]
rev' [] = []
-- note the NOT tail recursion
rev' (x:xs) = rev(xs) ++ [x]

-- with tail recursion
rev'' :: [a] -> [a]
rev'' [] = []
rev'' xs = last xs : rev''(init $ xs)
-- anyway using these helpers beats the point

-- prelude implementation
-- this is awesome
rev1 :: [a] -> [a]
rev1 = foldl (flip (:)) []
