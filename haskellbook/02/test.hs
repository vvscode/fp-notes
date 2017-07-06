sayHello :: String -> IO()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

experiment x = pi * (x * x) -- 3.14 * (x *x)