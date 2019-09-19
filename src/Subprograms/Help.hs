module Subprograms.Help
( help
) where
    
import Subprograms.Args
    
help :: [String] -> IO ()
help args = do
    putStrLn helpStr
    
helpStr :: String
helpStr =      "./Calendar -> Calendar manipulation app.\n"
            ++ "\n"
            ++ "* ./Calendar help -> Show this help menu\n"
            ++ "* ./Calendar add -> Add a calendar event\n"
            ++ "* ./Calendar remove -> Remove a calendar event\n"
            ++ "* ./Calendar show -> Show calendar events\n"