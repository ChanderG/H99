-- kth element of list

-- direct indexing
kth :: [a] -> Int -> a
kth xs k = xs !! ( k - 1)
