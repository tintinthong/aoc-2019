
main = do
 contents <- readFile "input.txt" 
 print $ sum $ map findSum $ mapRead $ lines contents 
  
mapRead :: [String] -> [Int]
mapRead = map  read 

findSum :: (Integral b, Integral a) => a -> b
findSum 0 = 0
findSum fuel = (compute fuel) + findSum  (compute fuel)

compute :: (Integral b, Integral a) => a -> b
compute mass 
  | extraFuel < 0 = 0
  | otherwise = extraFuel
  where extraFuel =  floor $ fromIntegral(mass) /3-2
  




