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
	
{-

	3. Escribir una función que tome como parámetro dos listas de enteros, y que calcule la cantidad de elementos de la primera lista que se encuentran también en la segunda.

	Tomo: A : [ 1..14 ] Entonces se calcula #( A Int B )
		  B : [ 2..10 ]
		  
	Tomando a A y a B como conjuntos, si alguno de sus elementos se repite, estos se cuentan como uno solo para encontrar el cardinal del conjunto, de esta manera si tenemos:
	
		  A : [ 1,2,1,3 ]
		  B : [ 1,3,2,1 ]
		  --------------
	A Int B : [ 1,2,3   ]			Y el resultado es : #( A Int B )

-}

	getInterseccion			 :: [ Int ] -> [ Int ] -> [ Int  ]
	estaElementoEnConjunto	 :: [ Int ] ->   Int   ->   Bool
	
	getInterseccion 			[ ]		[ ] = [ ]
	getInterseccion				 x		[ ] = [ ]
	getInterseccion				[ ]		 x	= [ ]
	
	
	
	estaElementoEnConjunto		[ ]  x	= False
	estaElementoEnConjunto	 (y:ys)  x  | y == x 		= True
										| otherwise		= estaElementoEnConjunto ys x
	
	


