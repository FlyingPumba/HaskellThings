-- Jugando con clases y tipos de datos

{-

	 Una clase es una entidad que define el comportamiento y las características generales de sus miembros ( No confundir con POO ).

	 Clases propias de Haskell:

	 		Eq 			: Relaciones de igualdad.
	 		Ord 		: Relaciones de orden.
	 		Show		: Relaciones de cadena (Input).
	 		Read		: Relaciones de cadena (Output).
	 		Enum		: Relaciones de secuencia.
	 		Bounded		: Relaciones de tipo.
	 		Num			: Relaciones de números.
	 		Integral	: Relaciones de números ( Conjuntos incluidos en Num : Int e Integer )
	 		Floating	: Relaciones de números ( Conjuntos incluidos en Num : Float y Double )

	 Los miembros de estas clases ( como se menciona arriba ) tienen comportamientos similares y por eso es que las operaciones elementales
	 Se definen bajo estos tipos:

	 En GHCI:

	 :type (*) -- Definición de la operación "multiplicar"
	 (*) :: Num a => a -> a -> a -- Acepta como parámetros cualquier par de números sin importar su tipo ( siempre que ambos correspondan al mismo ), ya que Num es el conjunto de tipos numéricos primitivos.

	 En base a lo anterior si quisiera ejecutar:

	 ( 8 :: Int ) * ( 10 :: Integer ) -- Error

	 Sin embargo:

	 9 * ( 10 :: Integer ) -- Resultado Integer : Porque se ajusta al tipo de la variable más de mayor "byteaje" que pueda contener al resultado.

	http://aprendehaskell.es/content/Tipos.html#clases-de-tipos-paso-a-paso-1a-parte

-}