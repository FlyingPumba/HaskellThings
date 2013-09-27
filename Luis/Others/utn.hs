-- 1.1 En otro archivo

-- 1.2 Funcion pertenece

pertenece :: (Eq a) => [a] -> a -> Bool
pertenece []  _ = False
pertenece (x:xs) n | x == n = True
				   | otherwise = pertenece xs n
				   
-- 1.3 Intersección

interseccion :: (Eq a) => [a] -> [a] -> [a]
interseccion x y | x == [] || y == [] = []
interseccion (x:xs) y | pertenece y x  = (interseccion (eliminarElemento xs x) (eliminarElemento y x )) ++ [ x ] ++ []
					  | otherwise = interseccion xs y
					  
eliminarElemento :: (Eq a) => [a] -> a -> [a]
eliminarElemento [] _ = []
eliminarElemento (x:xs) n | x == n = (eliminarElemento xs n ) ++ []
						  | otherwise = x : (eliminarElemento xs n ) ++ []

-- 1.4 TransformadaLoca

transformadaLoca :: [Int] -> [Int]
transformadaLoca [] = []
transformadaLoca (x:xs) | x > 19 = transformadaLoca ( eliminarElemento (x:xs) x )
transformadaLoca (x:xs) | (mod x 2 == 0) && x < 19 = [x+2]++(transformadaLoca xs)
transformadaLoca (x:xs) | (mod x 2 /= 0) && x < 19 = [x+1]++(transformadaLoca xs)
						| otherwise = (x:xs)
  
-- 1.5 ProductList

productList :: (Num a) => [a] -> a
productList [] = 0
productList [x] = x
productList (x:xs) = x * (productList xs)

-- 1.6 maximo

maximo :: (Integral a) => [a] -> a
maximo [] = 0
maximo (x:xs) = max x (maximo xs)

-- 1.7 MenoresA

menoresA :: (Ord a) => [a] -> a -> [a]
menoresA [] _ = []
menoresA (x:xs) n | n > x = x : menoresA xs n
				  | otherwise = menoresA xs n 

-- 1.8.1 Promedios

promedios :: (Fractional a) => [[a]] -> [a]
promedios [] = []
promedios (x:xs) =  ( (sum x) /  fromIntegral (length x)) : (promedios xs)

-- 1.8.2 PromediosSinAplazos 

pSinAplazos :: [[Float]] -> [Float]
pSinAplazos x =  diferenciaAB ( promedios x ) ( menoresA ( promedios x ) 4 )

diferenciaAB :: (Ord a) => [a] -> [a] -> [a]
diferenciaAB x y | x == [] || y == [] = x
diferenciaAB x (y:ys) | ys /= []  = interseccion ( eliminarElemento x y ) (diferenciaAB x ys)
					  | otherwise = eliminarElemento x y

-- 1.9 Diferencias

diferencias :: (Integral a) => [a] -> [a]
diferencias x | x == [] = []
diferencias (x:y) | y == [] = [x]
diferencias (x:y:xs) | xs /= [] =  abs ( x - y ) : ( diferencias (y:xs) )
					 | otherwise = [abs ( x - y )]
					 
-- 1.10 SinRepetidos

sinRepetidos :: (Eq a) => [ a ] -> [ a ]
sinRepetidos [] = []
sinRepetidos x = interseccion x x

sinRepetidos' :: (Eq a) => [a] -> [a]
sinRepetidos' [] = []
sinRepetidos' (x:xs) = x : ( sinRepetidos ( eliminarElemento (x:xs) x ) )

-- 1.11.1 AlVesre

alVesre :: [a] -> [a]
alVesre [] = []
alVesre (x:xs) = (alVesre xs) ++ [x]

{-

1.11.2

alVesre ["la", "tarde", "se", "puso", "linda"] 

alVesre ["la tarde se puso linda"]

-}

-- 1.12.1 SinExtremos

sinExtremos :: (Integral a) => [a] -> [a]
sinExtremos [] = []
sinExtremos x | length x == 2 = []
sinExtremos x = diferenciaAB x [ maximo x, minimum x ]  

-- 1.12.2 SinPuntas

sinPuntas :: (Integral a) => [a] -> a -> [a]
sinPuntas [] _ = []
sinPuntas x n | n == 0 = x
sinPuntas x n = sinPuntas (sinExtremos x) (n-1)

-- 1.12.3 SonTodosIguales

sonTodosIguales :: (Integral a) => [a] -> Bool
sonTodosIguales [] = True
sonTodosIguales x = length (sinRepetidos x) == 1

sonTodosIguales' :: (Integral a) => [a] -> Bool
sonTodosIguales' [] = True
sonTodosIguales' (x:y:xs) | x == y = sonTodosIguales' xs
						  | otherwise = False
						  
-- 1.13.1 esPar

esPar :: (Integral a) => a -> Bool
esPar a | a < 0  = False
esPar a | a == 0 = True
esPar a = esPar (a-2)

-- 1.13.2 esPar para enteros negativos

esPar' :: (Integral a) => a -> Bool
esPar' a | a > 0  = esPar a
esPar' a | a == 0 = True
esPar' a = esPar' (a+2) --Alto spagetti!

-- 1.14.1 Divr

divr :: Integer -> Integer -> Integer
divr dividendo divisor | dividendo < divisor = 0
					   | otherwise = 1 + divr (dividendo-divisor) divisor

-- 1.14.2 Modr -- Por Euclides dividendo = (cociente * divisor) + resto > resto = dividendo - (cociente * divisor)

modr :: Integer -> Integer -> Integer
modr a b = a - ((divr a b) * b)

-- 1.14.3 devolverParDivMod

devolverParDivMod :: Integer -> Integer -> (Integer, Integer)
devolverParDivMod a b = ( divr a b, modr a b )
  
