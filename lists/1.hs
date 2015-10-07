-- basic last element

-- prelude implementation
last1 :: [a] -> a
last1 = last

-- first of reverse
last2 = head . reverse

-- actual prelude implementation of last
last3 [x] = x
last3 (_:xs) = last xs 
-- needs to have the empty case catch
last3 [] = error "empty list"

--indexing
last4 [] = error "empty list"
last4 x = x !! (length x - 1)

--using foldl
last5 :: [a] -> a
-- to do this we have to explicitly name the input in the general case
--last5 [] = error "empty list" 
-- the error here is unclean for empty lists
last5 = foldl1 (\x y -> y)

--using foldr
last6 :: [a] -> a
-- empty case handled correctly here
last6 [] = error "Empty list"
last6 xs = foldr1 (\x y -> y) xs
-- notice the ordering still

-- Possible test cases
l1 = [1, 2, 3, 4] 
l2 = [1] 
l3 = []
l4 = [1..245]
