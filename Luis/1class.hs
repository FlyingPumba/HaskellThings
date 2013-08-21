-- Definimos una funcion de un tipo especìfico:

-- nombre_funcion :: Int -> Int

-- Producto cartesiano de enteros con enteros que va a enteros:

multiplicar :: ( Int, Int ) -> Int

---------------------------------------------

{-
	
	Si la funcion està definida asi:
	
		funcion x y = x + y

	entonces tiene que ser declarada asì:

		funcion :: Int -> Int -> Int


-}

sumar 		(x, y) = x + y
multiplicar 	(x, y) = x * y
resto		(x, y) = mod x y
identidad	(x)    = x

-- La sobrecarga no es admitida en Haskell

{- Esto es un comentario
	de varias lineas -}
