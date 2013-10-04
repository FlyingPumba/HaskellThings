imparesHastaN :: Int -> [Int]
imparesHastaN 0 = []
imparesHastaN 1 = [1]
imparesHastaN 2 = [1]
imparesHastaN n | mod n 2 == 0 = imparesHastaN (n-3)++[n-1]
		| otherwise = imparesHastaN (n-2)++[n]

listaSumatoria :: Int -> [Int]
listaSumatoria 1 = [1]
listaSumatoria n = (n+x):x:xs
	where (x:xs) = listaSumatoria (n-1)

mergeCore :: [Int] -> [Int] -> [Int]
mergeCore ys [] = ys
mergeCore [] xs = xs
mergeCore (y:ys) (x:xs) | y <= x = y:(mergeCore ys (x:xs))
						| otherwise = x:(mergeCore (y:ys) xs)

mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort (x:xs) = mergeCore (mergeSort primera) (mergeSort segunda)
	where (primera, segunda) = splitAt (div (length (x:xs)) 2) (x:xs)

