module Logic where

import System.Process
    
takeInfo :: IO (String, String)
takeInfo = do
    upt <- readProcess "uptime" [] []
    run <- readProcess "ps" ["-ef"] []
    return (upt, run)