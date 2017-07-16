-- https://www.hackerrank.com/challenges/fp-array-of-n-elements

f' list n = if n == 0 then list else f' (n-1:list) (n-1)
fn = f' []
