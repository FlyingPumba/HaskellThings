-- 2da clase de Haskell

-- Primeros 4 elementos del producto cartesiano definido por :
--take 4 [ (x,y) | x <-  [ 1..10  ], y <- [ 10..20 ] ]

-- Ejemplos ----------------------------------------------------

-- Evalua en funciòn del par (a,b) y el resultado es del tipo a

ex :: ( a, b ) -> a 

ex ( x, y ) = x

--

dist :: ( Float, Float ) -> Float

dist ( x, y ) = sqrt( x + y ) 

-- Definiciòn por "matcheo"

signo :: Int -> Int
signo 0 = 0
signo x | x > 0 =  1
signo x | x < 0 = -1
--signo x = -1 : El orden de declaraciòn de las funciones es importante: Esta expresiòn en esta linea es equivalente a la anterior.

--

factorial :: Int -> Int -- 50 : desborda
factorial x = product [ 1..x ]

signoIf :: Int -> [ Char ]
signoIf x = if x < 0 then "Negativo" else "Positivo"

{-

	Haskell puede inferir tipos ( como php o javascript ): El abuso de esta caracteristica puede llevar a excepciones.

	Tipos de datos primitivos:
		Int, Float, Bool, Char


-}

dos :: Int -> Int
dos x = if x < 10 then x else ( x + 1 )

f :: Int -> Int
f 0 = 0
f x | x > 0 = x
f x | x < 0 = -x


nand :: Bool -> Bool -> Bool
nand x y = not ( x && y )

nor :: Bool -> Bool -> Bool
nor x y = not ( x || y )

raices :: Float -> Float -> Float -> [ Float ]
raices a b c = [ ( -b - ( aux a b c ) ) / 2*a , ( -b + ( aux a b c ) ) / 2*a ]

aux :: Float -> Float -> Float -> Float
aux a b c = sqrt( b ^ 2 - 4*a*c )

esPrimo :: Int -> Bool
esPrimo y = length [ x | x <- [ 1..y ], ( mod y x ) == 0 ] <= 2
 


