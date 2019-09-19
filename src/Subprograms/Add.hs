module Subprograms.Add
( add
) where
    
import Control.Monad
import System.IO
    
add :: [String] -> IO ()
add args =
    if (length args /= 1)
        then putStrLn addHelp
        else appendFile ".calendar" ((head args) ++ "\n")
    
addHelp :: String
addHelp = "./Calendar add <Event> -- Add an event to the calendar."