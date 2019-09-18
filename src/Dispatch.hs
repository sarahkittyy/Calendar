module Dispatch
( dispatch
, Args (..)
) where
    
import Subprograms.Help

data Args = Args { name :: String, args :: [String] }

dispatch :: [(String, ([String] -> IO ()))]
dispatch =  [ ("help", help)
            
            ]