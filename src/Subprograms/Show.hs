module Subprograms.Show
( Subprograms.Show.show
) where

import System.IO
    
show :: [String] -> IO ()
show _ = do
    calendar <- readFile ".calendar"
    putStrLn $ (unlines . numberList . lines) calendar
    
numberList :: [String] -> [String]
numberList list = numberListFrom 1 list
    where
        numberListFrom n [] = []
        numberListFrom n (x:xs) = ((Prelude.show n) ++ " - " ++ x):numberListFrom (n + 1) xs