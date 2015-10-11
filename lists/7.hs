-- flatten a list of lists

--simple foldl
f1 :: [[a]] -> [a]
f1 = foldl1 (\x y -> x ++ y)

-- vanilla recursion
f2 :: [[a]] -> [a]
f2 [x] = x
f2 xs = (head xs) ++ f2 (tail xs)


