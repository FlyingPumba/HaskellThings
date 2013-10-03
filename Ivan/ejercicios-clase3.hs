multiplo3 :: Int -> Bool
multiplo3 0 = True
multiplo3 1 = False
multiplo3 2 = False
multiplo3 n = multiplo3 (n-3)

suma :: Integer -> (Integer -> Bool) -> Integer
suma n f | n == 0 = 0
suma n f | f n = n + suma (n-1) f
suma n f | otherwise = suma (n-1) f

terminaEn12 :: Integer -> Bool
terminaEn12 n = mod n 100 == 12

noTerminaNegativo :: Int -> Bool
noTerminaNegativo 0 = True
noTerminaNegativo n = noTerminaNegativo (n-1)

factorialDoble :: Int -> Int
factorialDoble 0 = 1
factorialDoble n | mod n 2 == 0 = n * factorialDoble (n-2)

factorialDobleImpar :: Int -> Int
factorialDobleImpar n | mod n 2 == 0 = factorialDoble n
		      | otherwise = factorialDoble (n-1)

operacionFiltro :: Integer -> (Integer -> Integer -> Integer) -> (Integer -> Bool) -> Integer
operacionFiltro n o f | n == 0 = 0
operacionFiltro n o f | (f n) = o n (operacionFiltro (n-1) o f)
operacionFiltro n o f | otherwise = operacionFiltro (n-1) o f
