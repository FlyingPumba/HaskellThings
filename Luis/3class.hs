{- Currificaciòn -}

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
inc = suma 1

--------------------------------------------------------------------

-- El modelo de computo implementado en Haskell es la reducciòn: Dividir las expresiones en otras màs sensillas ( caracteristico del paradigma funcional )

-- Redex: Expresiòn reducible | Forma normal: irreducible.


