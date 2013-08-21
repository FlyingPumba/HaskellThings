f :: Int -> Int
f (x) = x*3

fst2 :: (a,b) -> a
fst2 (x,y) = x 

dist :: (Float,Float) -> Float
dist (x,y) = sqrt (x^2+y^2)

signo :: Int -> Int
signo 0 = 0
signo x | x > 0 = 1
signo x | x < 0 = -1
-- signo x = -1

abs :: Int -> Int
abs x | x >= 0 = x
abs x | x < 0  = -x

abs2 :: Int -> Int
abs2 x = if x >= 0 then x else -x

y :: (Bool,Bool) -> Bool
y (True, x) = x
y (False, _) = False

--definir el or y el not

--ejercicios:

{-comentario de varias lineas
sigue acá -}

f1 :: Int -> Int
f1 x | x < 10 = x
f1 x | x >= 10 = x + 1

fnand :: (Bool, Bool) -> Bool
fnand (x,y) = not(x&&y)

fnand2 :: (Bool, Bool) -> Bool
fnand2 (True, True) = False
fnand2 (True, False) = True
fnand2 (False, True) = True
fnand2 (False, False) = True

fnor :: (Bool, Bool) -> Bool
fnor(x,y)  = not(x||y)

fnor2 :: (Bool, Bool) -> Bool
fnor2 (True, True) = False
fnor2 (True, False) = False
fnor2 (False, True) = False
fnor2 (False, False) = True

resolvente :: (Float, Float, Float) ->  (Float,Float)
resolvente (a,b,c) = (res1(a,b,c),res2(a,b,c))

res1 :: (Float, Float, Float) -> Float
res1 (a,b,c) = ((-b)+sqrt(b^2-4*a*c))/2*a

res2 :: (Float, Float, Float) -> Float
res2 (a,b,c) = ((-b)-sqrt(b^2-4*a*c))/2*a
