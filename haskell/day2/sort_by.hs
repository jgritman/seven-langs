--example
--*Main> let lessThan x y = y > x
--*Main> mySortBy [4,3,1,5] lessThan 
module Main where
  mySortBy [] fun = []
  mySortBy (h:t) fun = (lessThan fun h t) ++ [h] ++ (greaterThan fun h t)
    where 
    	lessThan fun h t = mySortBy (filter (fun h) t) fun
    	greaterThan fun h t = mySortBy (filter (\x -> not (fun h x)) t) fun