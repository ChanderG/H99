-- find number of elements in list

-- prelude function
len :: [a] -> Int
len = length

-- recursive prelude definition
len' :: [a] -> Int
len' [] = 0
len' (_:xs) = 1 + len' xs
