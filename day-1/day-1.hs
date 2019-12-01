
main = do
 contents <- readFile "input.txt" 
 print $ sum $ map fuelRequired $ mapRead $ lines contents 
  
mapRead :: [String] -> [Int]
mapRead = map  read 

fuelRequired :: (Integral b, Integral a) => a -> b
fuelRequired mass =  floor $ fromIntegral(mass) /3-2 

