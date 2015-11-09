-- run length encoding

-- simple recursive method
encode :: Ord a => [a] -> [(Int , a)]
encode [] = []
encode [x] = [(1, x)]
encode (x:xs) = 
  let sub = encode xs
  in case compare x (head xs) of
    EQ -> ((fst $ head sub) + 1, snd $ head sub) : tail sub
    _  -> (1, x) : sub


-- using takeWhile and dropWhile
encode1 :: Ord a => [a] -> [(Int, a)]
encode1 [] = []
encode1 (x:xs) = ((length $ takeWhile (==x) xs) + 1, x) : encode1 (dropWhile(==x) xs) 
