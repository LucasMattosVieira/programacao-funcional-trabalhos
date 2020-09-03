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

gera1 :: [Int]
gera1 = [ x^2 | x <- [1..15], odd x, x > 4, x < 14 ]

gera2 :: [(Int,Int)]
gera2 = [ (x,y) | x <- [1..15], x >= 1, x <= 4, y <- [x..(2*x)] ] 

l1 :: [Int]
l1 = [10..15]

gera3 :: [Int]
gera3 = [ x | y <- l1, x <- [1..15], x <= y ]

gera4 :: [(Int,Int)]
gera4 = [ (x,x+1) | x <- [1..15], odd x ]

gera5 :: [Int]
gera5 = [ fst(n) + y | n <- gera4, y <- [1..15], y == fst(n) + 1 ]
