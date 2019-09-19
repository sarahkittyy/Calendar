module Dispatch
( runSubprogram
) where

import Subprograms.Help
import Subprograms.Add
import Subprograms.Remove
import Prelude hiding (show)
import Subprograms.Show

-- | List of subprogram names to their functions
dispatch :: [(String, ([String] -> IO ()))]
dispatch =  [ ("help", help)
            , ("add", add)
            , ("remove", remove)
            , ("show", show)
            ]
            
-- | Runs the given subprogram with the given arguments.
runSubprogram :: String -> [String] -> IO ()
runSubprogram subp args = 
    case (lookup subp dispatch) of
        Nothing -> putStrLn $ "That subprogram doesn't exit! Run ./Calendar help for help."
        (Just prog) -> prog args