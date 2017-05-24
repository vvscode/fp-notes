-- В модуле Data.Tuple стандартной библиотеки определена функция swap :: (a,b) -> (b,a),
-- переставляющая местами элементы пары:

-- GHCi> swap (1,'A')
-- ('A',1)
-- Эта функция может быть выражена в виде:

-- swap = f (g h)
-- где f, g и h — некоторые идентификаторы из следующего набора:

-- curry uncurry flip (,) const
-- Укажите через запятую подходящую тройку f,g,h.

swap = f (g h)

f = uncurry
g = flip
h = (,)
