-- Dummy quick sort
quickSort [] = []
quickSort [x] = [x]
quickSort [x, y] = [min x y, max x y]
quickSort (x: xs) = 
  let lessSorted = quickSort [a | a <- xs, a <= x]
      largerSorted = quickSort [a | a <- xs, a > x]
  in lessSorted ++ [x] ++ largerSorted