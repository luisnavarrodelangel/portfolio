import System.Directory
import Data.Char
import Control.Monad


--listDirectory :: FilePath-> IO [FilePath]


main = forever $ do
  --  d <- getCurrentDirectory
  --print d
    l <- getDirectoryContents "/home/lui/photo"
    if l == [".", ".."]
     then print "empty"
      else print l
