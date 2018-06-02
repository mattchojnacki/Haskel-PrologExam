--Zadanie 1
writeS :: [Char] -> [Char]
writeS x= "hello " ++ x ++ "!"

--Zadanie 2
unitaryN :: Int ->[[Int]]
unitaryN n = [[if i==j then 1 else 0|i<-[1..n]]|j<-[1..n]]

--Zadanie 3
numbers3 :: [Int]
numbers3 = [100*x+10*y+z | x <- [1..9], y <- [0..9], z <- [0..9], mod (x+y+z) 3 ==0, x/=y, x/=z, y/=z]

--Zadanie 4
f :: Int -> Int
f 1 = 3
f 2 = -4
f 3 = 11
f _ = 0

--Zadanie 5
min3 :: Int -> Int -> Int -> Int
min3 x y z = min x $ min y z 

--Zadanie 6
sumator :: IO ()
sumator = do
   putStr "Podaj x "
   x <- getLine
   putStr "Podaj y "
   y <- getLine
   putStr "Podaj z "
   z <- getLine
   putStrLn $ show $ (read x :: Int) + (read y :: Int) + (read z :: Int)
   
--Zadanie 7
sumaElemListy :: [Int] -> Int
sumaElemListy [] = 0
sumaElemListy (x:xs) = x + sumaElemListy xs


sumaDodElemListy :: [Int] -> Int
sumaDodElemListy [] = 0
sumaDodElemListy (x:xs) = (if x>0 then x else 0) + sumaDodElemListy xs 

--Zadanie 8
dzielniki :: Int -> [Int]
dzielniki n = [d | d <- [1..n], mod n d == 0]

czyPierwsza :: Int -> Bool
czyPierwsza n = dzielniki n == [1,n]

--Zadanie 9
pierwszyZL :: [a] -> a
pierwszyZL [] = error "Brak pierszego" 
pierwszyZL (x:_) = x

drugiZL :: [a] -> a
drugiZL [] = error "brak"
drugiZL [_] = error "brak"
drugiZL (_:x:_) = x

ostatniZL :: [a] -> a
ostatniZL [] = error "brak"
ostatniZL [x] = x
ostatniZL (_:xs) = ostatniZL xs

przedostatniZL :: [a] -> a
przedostatniZL [] = error "brak"
przedostatniZL [x] = error "brak"
przedostatniZL [x,_] = x
przedostatniZL (_:xs) = przedostatniZL xs




   
   
   
