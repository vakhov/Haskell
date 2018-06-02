module Main where

max' :: Ord a => a -> a -> a
max' x y | x < y = y
max' x y | x > y = x
max' x _ = x

maximum' :: Ord a => [a] -> a
maximum' [x] = x
maximum' (x:y:xs) = maximum' ((max' x y):xs)

main :: IO()
main = print $ maximum' [1,5,3,8,2,3,4]
