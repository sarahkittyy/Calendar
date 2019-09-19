module Subprograms.Remove
( remove
) where
    
import System.IO
import Control.Monad (when)
import qualified Subprograms.Show as SPShow

remove :: [String] -> IO ()
remove args =
    if (length args /= 1)
        then putStrLn removeHelp
        else do
            contents <- readFile ".calendar"
            length contents `seq` writeFile ".calendar" $ (unlines . removeElem ((read $ (head args) :: Int) - 1) . lines) contents
            SPShow.show args
    
removeElem :: Int -> [a] -> [a]
removeElem _ [] = []
removeElem 0 list = (tail list)
removeElem n list = (head list):(removeElem (n - 1) (tail list))

removeHelp :: String
removeHelp = "./Calendar remove <#> -> Removes event number # from the calendar."