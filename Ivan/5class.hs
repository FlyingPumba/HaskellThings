noDecreciente :: Ord a => [a] -> Bool
noDecreciente [] = True
noDecreciente [x] = True
noDecreciente (x:y:xs) = (x<=y)&&(noDecreciente (y:xs))

repetidos :: Eq a => [a] -> Bool
repetidos [] = False
repetidos [x] = False
repetidos (x:xs) = (pertenece xs x) || repetidos xs

pertenece :: Eq a => [a] -> a -> Bool
pertenece [] _ = False
pertenece (x:xs) e = (x==e) || (pertenece xs e)
