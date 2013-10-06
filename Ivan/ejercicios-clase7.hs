mcdEuclides :: Integer -> Integer -> Integer
mcdEuclides a 0 = a
mcdEuclides a b = mcdEuclides b (mod a b)

mcdEuclidesCantPasos :: Integer -> Integer -> Integer
mcdEuclidesCantPasos a 0 = 0
mcdEuclidesCantPasos a b = 1 + mcdEuclidesCantPasos b (mod a b)

euclidesFibonacci :: Integer -> Integer
euclidesFibonacci n = mcdEuclidesCantPasos x y
	where (x:y:xs) = sfib n

sfib :: Integer -> [Integer]
sfib 0 = [0]
sfib 1 = [1, 0]
sfib n = (x+y) : (x:y:fs)
	where (x:y:fs) = sfib (n-1)

base10 :: Integer -> [Integer] -> Integer
base10 n [] = 0
base10 n (x:xs) = (n^exponente)*x + base10 n xs
	where exponente = (length (x:xs))-1

base10lista :: Integer -> [Integer] -> [Integer]
base10lista n [] = []
base10lista n (x:xs) = convertirALista(base10 n (x:xs))

convertirALista :: Integer -> [Integer]
convertirALista 0 = []
convertirALista n = (convertirALista (div n 10))++[mod n 10]

base10aR :: Integer -> Integer -> [Integer]
base10aR 0 r = []
base10aR n r | n < 0 = base10aR (-n) r
			 | otherwise = (base10aR cociente r)++[resto]
	where resto = mod n r; cociente = div n r