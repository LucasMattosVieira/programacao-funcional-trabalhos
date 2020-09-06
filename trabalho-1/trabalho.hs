{-
    Trabalho 1 de Programação Funcinal
-}

{-
    Questão 1
-}

triangulo :: (Float, Float, Float) -> String
triangulo (a, b, c)
    | ((a + b + c) /= 180) || a <= 0 || b <= 0 || c <= 0 = "Nao e triangulo"
    | (a == b) && (b == c) = "Equilatero"
    | (a == 90) || (b == 90) || (c == 90) = "Retangulo"
    | (a > 90) || (b > 90) || (c > 90) = "Obtuso"
    | otherwise = "Simples"

{-
    Questão 2
-}

equacao :: Float -> Float -> Float -> (Float, Float)
equacao a b c
    | a /= 0 = ((-b + sqrt(b^2 - 4 * a * c))/(2 * a), (-b - sqrt(b^2 - 4 * a * c))/(2 * a))
    | otherwise = ((-c)/b , a)

{-
    Questão 3
-}

type Data = (Int,Int,Int)

valor :: Float -> Data -> Data -> Float
valor x (d,m,a) (dn,mn,an)
     | (a - an) < 2 || ((a - an) == 2 && (m - mn) < 0) || ((a - an) == 2 && (m - mn) == 0 && (d - dn) < 0) = (15*x)/100
     | (a - an) < 11 || ((a - an) == 11 && (m - mn) < 0) || ((a - an) == 11 && (m - mn) == 0 && (d - dn) < 0) = (45*x)/100
     | (a - an) > 70 || ((a - an) == 70 && (m - mn) > 0) || ((a - an) == 70 && (m - mn) == 0 && (d - dn) >= 0) = (50*x)/100
     | otherwise = x

{-
    Questão 4
-}

{- Letra A -}

gera1 :: [Int]
gera1 = [ x^2 | x <- [1..15], odd x, x > 4, x < 14 ]

{- Letra B -}

gera2 :: [(Int,Int)]
gera2 = [ (x,y) | x <- [1..15], x >= 1, x <= 4, y <- [x..(2*x)] ] 

{- Letra C -}

l1 :: [Int]
l1 = [10..15]

gera3 :: [Int]
gera3 = [ x | y <- l1, x <- [1..15], x <= y ]

{- Letra D -}

gera4 :: [(Int,Int)]
gera4 = [ (x,x+1) | x <- [1..15], odd x ]

{- Letra E -}

gera5 :: [Int]
gera5 = [ fst(n) + y | n <- gera4, y <- [1..15], y == fst(n) + 1 ]

{-
    Questão 5
-}

{- Letra A -}

contaNegM2 :: [Int] -> Int
contaNegM2 l = length [ x | x <- l, x < 0, mod x 2 == 0]

{- Letra B -}

listaNegM2 :: [Int] -> [Int]
listaNegM2 l = [ x | x <- l, x < 0, mod x 2 == 0]

{-
    Questão 6
-}

distancias :: [(Float,Float)] -> [Float]
distancias l = [ (sqrt(x^2 + y^2)) | (x,y) <- l ]

{-
    Questão 7
-}

fatores :: Int -> [Int]
fatores n = [k | k <- [1..n], mod n k == 0]

primos :: Int -> Int -> [Int]
primos x y = [ g | g <- [x..y], length (fatores g) == 2]

{-
    Questão 8
-}

mdc :: (Int,Int) -> Int
mdc (m,n)
     | n == 0 = m
     | otherwise = mdc (n, mod m n)

mmc2 :: Int -> Int -> Int
mmc2 a b = div (a*b) (mdc(a,b))

mmc :: Int -> Int -> Int -> Int
mmc a b c = mmc2 (mmc2 a b) c

{-
    Questão 9
-}

calcula_serie :: Float -> Int -> Float
calcula_serie x 0 = 0
calcula_serie x n = if even n then (x/fromIntegral n) + calcula_serie x (n - 1) else (fromIntegral n/x) + calcula_serie x (n - 1)

{-
    Questão 10
-}

{-
    Questão 11
-}

{-
    Questão 12
-}

{-
    Questão 13
-}

{-
    Questão 14
-}

{-
    Questão 15
-}

{-
    Questão 16
-}

{-
    Questão 17
-}

{-
    Questão 18
-}

{-
    Questão 19
-}

{-
    Questão 20
-}
