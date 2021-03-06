-- требуется найти прямоугольный треугольник, удовлятворяющий всем следующим
-- условиям:
-- - длины сторон являются целыми числами;
-- - длина каждой стороны меньше либо равна 10;
-- - периметр треугольника (тоесть сумма длин сторон) равен 24.
rightTringles = [(a,b,c) | c <- [1..10],  b <- [1..c],  a <- [1..b],  a^2 + b^2 == c^2, a + b + c == 24]
