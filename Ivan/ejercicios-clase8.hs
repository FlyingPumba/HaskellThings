goldbach :: Int -> (Int, Int)
goldbach n | n > 3 && mod n 2 == 0 = sumaPrimos n 2 2

sumaPrimos :: Int -> Int -> Int -> (Int, Int)
sumaPrimos n primo1 primo2 | (primo1)^2 + (primo2)^2 == n = (primo1,primo2)

--devuelve los primos hasta n
cribaEratostenes :: Int -> [Int]
cribaEratostenes n = tacharMultiplos (lista2aN n) 2

-- devuelve una lista sin los multiplos
tacharMultiplos :: [Int] -> Int -> [Int]
tacharMultiplos [] _ = []
tacharMultiplos (x:xs) p | p <= x = tacharMultiplos (y:ys) y
			 | otherwise = (x:xs)
			where (y:ys) = tacharPrimo (x:xs) p

-- devuelve una lista sin los multiplos de un primo p
tacharPrimo :: [Int] -> Int -> [Int]
tacharPrimo [] _ = []
tacharPrimo (x:xs) p | mod x p == 0 = tacharPrimo xs p
			 | otherwise = x:(tacharPrimo xs p)

lista2aN :: Int -> [Int]
lista2aN n = [2..n]

