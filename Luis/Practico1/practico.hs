{-

	 1. Escribir una función que tome como parámetro un entero n y que retorne el resultado de la siguiente sumatoria, usando recursión:

				S1 ( n ) = SUM ( 2i - 1 )^2, from i = 1 to n

-}


	sumatoria1 :: Integer -> Integer
	
	sumatoria1 n | n == 1		=	1
	sumatoria1 n 				=  ( ( 2 * n ) - 1 )^2 + ( sumatoria1 ( n - 1 )  )

{-

	2. Escribir una función que tome como parámetro un entero n y que retorne el resultado de la siguiente sumatoria, usando recursión:
	
				S2 ( n ) = SUM ( -1 )^i * 2^i, from i = 1 to n

-}


	sumatoria2 :: Integer -> Integer
	
	sumatoria2 n | n == 1		= -2
	sumatoria2 n				= ( ( -1 )^n * 2^n ) + ( sumatoria2 ( n - 1 ) )
	
