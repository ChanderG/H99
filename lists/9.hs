-- pack consecutive duplicates

-- pack1 : simple recursive solution
pack1 :: Ord a => [a] -> [[a]]
pack1 [] = [[]]
pack1 [x] = [[x]]
pack1 (x:xs) =  case compare x (head xs) of
  EQ -> (x : head (pack1 xs)) : tail (pack1 xs)
  _  -> [x] : pack1 xs


-- refactor to avoid multiple calls to sub functions
pack2 :: Ord a => [a] -> [[a]]
pack2 [] = [[]]
pack2 [x] = [[x]]
pack2 (x:xs) = 
  let sub = pack2 xs
  in case compare x (head xs) of
    EQ -> (x : head sub) : (tail sub)
    _  -> [x] : sub
-- could be written with where instead of let
-- may cause it to become tail recursion
