{-
    Trabalho 1 de Programação Funcinal
-}

{-
    Questão 1
-}

triangulo :: (Float, Float, Float) -> String
triangulo (a, b, c)
    | (a + b + c) /= 180 = "Nao e triangulo"
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
