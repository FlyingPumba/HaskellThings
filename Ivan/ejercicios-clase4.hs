data N = Z | S N deriving (Show)

restaPeano :: N -> N -> N
restaPeano Z Z = Z
restaPeano (S n) Z = (S n)
restaPeano (S n) (S m) | mayorIgualPeano (S n) (S m) = restaPeano n m

mayorIgualPeano :: N -> N -> Bool
mayorIgualPeano _ Z = True
mayorIgualPeano Z _ = False
mayorIgualPeano (S n) (S m) = mayorIgualPeano n m

data P = T | F | A P P | O P P | N P deriving (Show)

cantidadConstantes :: P -> Int
cantidadConstantes T = 1
cantidadConstantes F = 1
cantidadConstantes (A p q) = cantidadConstantes p + cantidadConstantes q
cantidadConstantes (O p q) = cantidadConstantes p + cantidadConstantes q
cantidadConstantes (N p) = cantidadConstantes p

cantidadValoresPositivos :: [Int] -> Int
cantidadValoresPositivos [] = 0
cantidadValoresPositivos (x:xs) | x >= 0 = 1 + cantidadValoresPositivos xs
				| otherwise = cantidadValoresPositivos xs

pertenece :: [Int] -> Int -> Bool
pertenece [] e = False
pertenece (x:xs) e | e == x = True
		   | otherwise  = pertenece xs e

listaSinSegundo :: [Int] -> [Int]
listaSinSegundo [] = []
listaSinSegundo [x] = [x]
listaSinSegundo (x:y:xs) = x:xs

listaSinNegativos :: [Int] -> [Int]
listaSinNegativos [] = []
listaSinNegativos (x:xs) | x >= 0 = x:listaSinNegativos xs
			 | otherwise = listaSinNegativos xs

palindroma :: [Int] -> Bool
palindroma l = l == reverse l
