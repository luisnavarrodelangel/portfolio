import System.IO
import System.Process
import Data.Char
import Control.Monad

main = do
  l <- getLine
  writeFile "stl.sh"  ("mogrify -format png /home/lui/Pictures/"  ++ l)
  callCommand "sh stl.sh"
