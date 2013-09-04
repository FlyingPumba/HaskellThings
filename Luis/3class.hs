{-{- Currificaciòn -}

promedio :: Float -> Float -> Float
promedio x y = ( x + y ) / 2

{- 

	Una funciòn currificada puede ser reutilizada.
	
	Ver: Aplicaciòn parcial de funciones en lenguajes funcionales.

	Si llamo:

		f = ( promedio 2 )
		f 2 --> Devuelve : 2

		promedio 2 ==> Es una funciòn que va de Float -> Float

-}

-- Al igual que en js, las funciones pueden pasarse por parametro.
			
mifuncion :: ( Int -> Int ) -> Int
mifuncion f = 2 + f 1

suma :: Int -> Int -> Int
suma x y = x + y

inc :: Int -> Int
inc = suma 1-}

--------------------------------------------------------------------

-- El modelo de computo implementado en Haskell es la reducciòn: Dividir las expresiones en otras màs sensillas ( caracteristico del paradigma funcional )

-- Redex: Expresiòn reducible | Forma normal: irreducible.

{-

	Dar dos funciones f y g en Haskell tales que ( f o g ) este definida siempre, pero ( g o f ) este siempre indefinida.

	f(g(x)) = definida

	g(f(x)) = indefinida

-}

g ( x ) = undefined

f ( x ) = 3

{- 

	Consideremos la funcion f : N -> R definida por f (n) = p n si n > 0 y f (0) = 1. Programarla en Haskell y verificar que f (n) se indefine si n < 0.


f :: Float -> Float

f x | ( x < 0  ) 	= undefined
f x | ( x == 0 )	= 1
f x | ( x > 0  )	= sqrt x

-}

{-

	Programar una funcion f que reciba como parametros dos funciones g y h, de modo tal que f = (g o h). ¿ Que signatura tiene f ?


g :: Int -> Int
h :: Int -> Int

g x = x + 1
h x = x - 1

f :: ( Int -> Int ) -> ( Int -> Int ) -> Int

f x y = x ( y( 3 ) )

-}

{-

	Programar una funcion tal que, dado un numero a, devuelva una funcion que a su vez tome como parametro un numero b y esta segunda funcion retorne a=b.

	: Era esto lo que pedia?


dv :: Float -> Float -> Float

dv x y = x / y


func :: Float -> ( Float -> Float -> Float ) -> Float

func a f = ( f ( a ) ) 4

-}


