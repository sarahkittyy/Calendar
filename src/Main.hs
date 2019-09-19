import System.Environment
import qualified Dispatch

main :: IO ()
main = do
    progName <- getProgName
    progArgs <- getArgs
    
    let (subprog, args) = case progArgs of
                            [] -> ("help", [])
                            (p:ps) -> (p, ps)
    Dispatch.runSubprogram subprog args
        