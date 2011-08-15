module Main where
  everyFifth x = x : (everyFifth (x + 5)) 

  everyThird y = y : (everyThird (y + 3))

  everyEighth x y =  (zipWith (+) (everyFifth x) (everyThird y))