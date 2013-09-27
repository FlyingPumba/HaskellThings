ordenar :: [ Int ] -> ( [Int] -> Int ) -> [Int]
ordenar [] _ = []
ordenar	xs tipo = (tipo xs) : ( ordenar ( dropElement xs (tipo xs) ) tipo )

mayorAMenor :: [ Int ] -> Int
mayorAMenor xs = maximum xs

menorAMayor :: [Int] -> Int
menorAMayor xs = minimum xs

dropElement	 :: [ Int ] -> Int -> [ Int ]

dropElement [   ] n		 				= [   ]
dropElement [ x ] n		  | x == n 		= [   ]
dropElement ( x : xs  ) n | x == n		= xs
						  | otherwise 	= x : ( dropElement xs n ) ++ [  ]
						  
split :: [ a ] -> ( [ a ], [ a ] )
split [] = ([],[])
split [x] = ([x],[])
split (x:y:xys) = ( x:xs, y:ys ) where (xs, ys) = split xys

getMin :: [Int] -> Int
getMin [x] = x
getMin (x:xs) = min x ( getMin xs )

reverse' :: [a] -> [a]
reverse' [x] = [x]
reverse' (x:xs) = ( reverse' xs )++[x]

esPal :: [Char] -> Bool
esPal x = x == (reverse' x)

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

fibonacci' :: Integer -> [Integer]
fibonacci' 0 = [0]
fibonacci' 1 = [1,0]
fibonacci' n = ( x + y ) : [x]
			where (x:y:xs) = fibonacci' (n-1)
			
factorial :: Integer -> [Integer]
factorial 0 = [1]
factorial 1 = [1,1]
factorial n = ( n * x ) : [ (n-1) * y ]
	where (x:y:xs) = factorial (n-1)
	
-- Escribir una funcion que tome un entero n y que retorne una lista con los primeros n numeros impares.

listaImpares :: Integer -> [Integer]
listaImpares 1 = [1]
listaImpares n | mod n 2 == 0 = (n-1) : listaImpares(n-3)
			   | otherwise = n : listaImpares(n-2)
			   
-- Escribir una funcion que tome un entero n y que retorne una lista l con n elementos, de modo tal que el i-esimo elemento de l sea 1 + 2 + ... + i para i = 1 .. n

listaSumaN :: Integer -> [Integer]
listaSumaN 0 = [0]
listaSumaN 1 = [1]
listaSumaN i = (sumFrom1ToI i) : (listaSumaN (i-1))

sumFrom1ToI :: Integer -> Integer
sumFrom1ToI 1 = 1
sumFrom1ToI i = i + sumFrom1ToI(i-1) 

-- Escribir una funcion que reciba dos listas ordenadas en forma no decreciente y que retorne una lista que contenga la union de los elementos de las dos listas recibidas, y que tambien este ordenada en forma no decreciente.

  
