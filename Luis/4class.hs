-- Escribir una funcion para determinar recursivamente si un número es múltiplo de 3. No se puede usar las funciones mod y div.

esMultiplo 					:: Int -> Bool

esMultiplo x | ( x == 0 ) 	= True
esMultiplo x | ( x < 0  ) 	= False
esMultiplo x | ( x > 0  ) 	= esMultiplo ( x - 3 )

-- Usando la función suma, sumar todos los números entre 1 y 1000 que terminen en 12.

suma 					:: Integer -> ( Integer -> Bool ) -> Integer

terminaEnNumero 		:: Integer -> Bool

suma n f | n == 0 			= 0
suma n f | f n 				= n + suma ( n - 1 ) f
suma n f | not ( f n )		= suma ( n - 1 ) f

terminaEnNumero x 			= ( mod x 100 ) == 12

-- Escribir una función recursiva que no termine si se ejecuta con números negativos.
	-- Factorial de números negativos.

factorialRaro 				:: Integer -> Integer

factorialRaro x | x == ( -1 )	= ( -1 )
factorialRaro x | x == 1 		= 	 1
factorialRaro x | x > 0			= factorialRaro( x - 1 ) * x
factorialRaro x | x < 0			= factorialRaro( x + 1 ) * x

-- Escribir una función para calcular n!! = n ( n - 2 ) ( n - 4 ) ... 1

factorial 					:: Integer -> Integer

factorial x | x == 0 			= 1
factorial x | (mod x 2) /= 0	= undefined
factorial x 					= ( factorial ( x - 2 ) ) * x

-- Escribir una función para calcular n!!, tal que si n es impar calcule ( n - 1 )!!
	-- No entiendo la consigna.

-- Generalizar la función suma para que, en vez de sólo sumar ( + ) los números que pasen el filtro, pueda realizar cualquier otra operación entre Integers que uno quiera, pasándole la operación apropiada como un nuevo parámetro.

sumag 					:: Integer -> ( Integer -> Bool ) -> ( Integer -> Integer -> Integer ) -> Integer

sumar					:: Integer -> Integer -> Integer
restar					:: Integer -> Integer -> Integer
multiplicar				:: Integer -> Integer -> Integer

sumar x y 		= x + y
restar x y 		= x - y
multiplicar x y | ( y /= 0 ) = x * y
multiplicar x y | otherwise  = x
-- La división no es completa en los enteros.


sumag n f o | n == 0 						= 0
sumag n f o | f n 							= o n ( sumag ( n - 1 ) f o )
sumag n f o | not ( f n )					= sumag ( n - 1 ) f o




