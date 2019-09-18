import System.Environment
import qualified Dispatch as D

main :: IO ()
main = do
    programArgs <- getArgs
    programName <- getProgName
    let prog = D.Args { D.name = programName, D.args = programArgs } 
    
    return ()
    
    