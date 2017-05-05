doubleMe x = x * 2

-- doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                      then x
                      else x * 2

doubleSmallNumberInline x = (if x > 100 then x else x*2) + 1

strangeLen xs = sum [1 | _ <- xs]
