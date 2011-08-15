module Main where
  convertString str = read (filter (\x -> x /= ',') (dropWhile (\x -> x == '$' || x == '0') str))::Float