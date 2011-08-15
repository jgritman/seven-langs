module Main where
  mySort [] = []
  mySort (h:t) = (lessThan h t) ++ [h] ++ (greaterThan h t)
    where 
    	lessThan h t = mySort (filter (\x -> x < h) t)
    	greaterThan h t = mySort (filter (\x -> x > h) t)