module Main where

somaMultiplo5(x,y)
 | x == y && mod x 5 == 0 = x
 | x == y = 0
 | x < y && mod x 5 == 0 = x + somaMultiplo5(x+1,y)
 | x < y = somaMultiplo5(x+1,y)
 | otherwise = somaMultiplo5(y,x)

somaDivisor50(x,y)
 | x == y && mod 50 x == 0 = x
 | x == y = 0
 | x < y && mod 50 x == 0 = x + somaDivisor50(x+1,y)
 | x < y = somaDivisor50(x+1,y)
 | otherwise = somaDivisor50(y,x)

principal(i,f) = somaMultiplo5(i,f) * (somaDivisor50(i,f) ^ 3)