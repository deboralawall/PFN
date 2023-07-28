-----------------Triângulo----------------------
--EXERCÍCIO 1
ehTriangulo a b c = if a >= b + c || b >= c + a || c >= a + b then False else True

--EXERCÍCIO 2
tipoTriangulo a b c = if a == b && b == c then "equilatero" 
  else if a == b || a == c || c == b then "isosceles" else "escaleno"
  
--EXERCÍCIO 3
triangulo a b c = if ehTriangulo a b c == False then "nao eh um triangulo" else tipoTriangulo a b c  
------------------------------------------------

--EXERCÍCIO 4
somaPares 0 = 0
somaPares 2 = 2
somaPares n = (n `div` 2) * ((n `div` 2)+ 1)

--EXERCÍCIO 5
somaPot2m m 0 = m
somaPot2m m n = 2 ^ n * m  + somaPot2m m (n-1) 

--EXERCÍCIO 6
primo :: Int -> Bool --[1,2,3,4] -> [true, true, true, false]
primo 1 = False 
primo 2 = True  
primo n = if (length [x | x <- [2..n-1], rem n x == 0]) > 0 then False else True  
  
--EXERCÍCIO 7
--(4/1 - 4/3)+(4/5 - 4/7)+(4/9 - 4/11)...
seriePI 1 = 4
seriePI n = seriePI' 1 n 
seriePI' = if n > x + 2 then [4/x - 4/(x + 2)] + seriePI' (x+4) n else 0
