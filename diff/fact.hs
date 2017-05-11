fact 1 = 1
fact x = x * fact(x-1)

factTo' (x, mi) = if x > 1 then factTo' (x-1, x * mi) else x * mi;
factTo x = factTo' (x, 1)
