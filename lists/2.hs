-- basic second last item from list

sl :: [a] -> a
sl [] = error "Empty list"
sl [a] = error "Too short list"
sl x = x !! (length x - 2)

-- quick and dirty
sl' :: [a] -> a
sl' x = head $ tail $ reverse x
