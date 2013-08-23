sumar :: Int -> Int -> Int

sumar x y = x + y

------------------------------

multiplicar				:: ( Int, Int ) -> Int

multiplicar ( x, y )	= x * y

------------------------------

mostrarMayor			:: [ Int ] -> Int

mostrarMayor x			= maximum x

------------------------------

mostrarMenor			:: [ Int ] -> Int

mostrarMenor x			= minimum x

------------------------------

concatenarCadena		:: [ Char ] -> [ Char ] -> [ Char ]

concatenarCadena x y	= x ++ y

------------------------------

modulo					:: Int -> Int

modulo x				= if x >= 0 then x else ( -x )

------------------------------

-- Funciones de listas

conseguirLongitud x		= length x

esVacia x				= null x

voltear x				= reverse x

conseguirPrimeros x y	= take x y

eliminarPrimeros x y	= drop x y

multiplicarPrimeros x y	= product( take x y )

estaElementoEnLista x y	= elem x y

-------------------------------

-- Variables

a :: Int

a = 15

b :: Bool

b = not ( 15 > 40 )

c :: [ Int ]

c = [ 0 ] -- c = 0 : No es interpretado : error.