module Main where
import System.Process
import Control.Monad
import Control.Concurrent
import System.Directory
--import Filesystem.Path.CurrentOS
import System.FilePath.Posix

main =  do

   k <- getDirectoryContents "/home/lui/photo/"
   if length k ==  2
     then callCommand "clear"
     else do

    l <- takeExtension `fmap`  (!! 0) `fmap` getDirectoryContents "/home/lui/photo/"
    if l == ".jpg"
      then do
          print "index 0"
          let m = (!! 0) k
            in writeFile "png.sh"  ("mogrify -format png /home/lui/photo/" ++ m)
          callCommand "sh png.sh"
          print l
      else do

    l <- takeExtension `fmap`  (!! 1) `fmap` getDirectoryContents "/home/lui/photo/"
    if l == ".jpg"
      then do
          print "index 1"
          let m = (!! 1) k
            in writeFile "png.sh"  ("mogrify -format png /home/lui/photo/" ++ m)
          callCommand "sh png.sh"
          print l
       else do

     l <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo/"
     print "index 2.2"
     let m = (!! 2) k
       in writeFile "png.sh"  ("mogrify -format png /home/lui/photo/" ++ m)
     callCommand "sh png.sh"
     print l

---------------------stl--------------
     k <- getDirectoryContents "/home/lui/photo/"
     if length k > 3
       then print "clear"
       else do
     l <- takeExtension `fmap`  (!! 0) `fmap` getDirectoryContents "/home/lui/photo/"
     if l == ".png"
       then do
         print "stl index 0"
         let m = (!! 0) k
           in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ m ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
         callCommand "sh png.sh"
         print l
       else do

     l <- takeExtension `fmap`  (!! 1) `fmap` getDirectoryContents "/home/lui/photo/"
     if l == ".png"
       then do
         print "stl index 1"
         let m = (!! 1) k
           in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ m ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
         callCommand "sh png.sh"
         print l
         else do

      l <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo/"
      if l == ".png"
        then do
         print "stl index 2"
         let m = (!! 2) k
           in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ m ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
         callCommand "sh png.sh"
         print l
         else do

      l <- takeExtension `fmap`  (!! 3) `fmap` getDirectoryContents "/home/lui/photo/"
      print "stl index 3"
      let m = (!! 3) k
        in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ m ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
      callCommand "sh png.sh"
      print l

------------------RENDERING
      k <- getDirectoryContents "/home/lui/photo/"
      if length k > 4
         then do
      l <- takeExtension `fmap`  (!! 0) `fmap` getDirectoryContents "/home/lui/photo/"
      if l == ".stl"
         then do
         print "rendering"
         let m = (!! 0) k
            in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ m)
         callCommand "sh open.sh"
         callCommand "sh delete.sh"
         else do
      l <- takeExtension `fmap`  (!! 1) `fmap` getDirectoryContents "/home/lui/photo/"
      if l == ".stl"
         then do
         print "rendering"
         let m = (!! 1) k
            in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ m)
         callCommand "sh open.sh"
         callCommand "sh delete.sh"
         else do

      l <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo/"
      if l == ".stl"
         then do
         print "rendering"
         let m = (!! 2) k
            in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ m)
         callCommand "sh open.sh"
         callCommand "sh delete.sh"
         else do
      l <- takeExtension `fmap`  (!! 3) `fmap` getDirectoryContents "/home/lui/photo/"
      if l == ".stl"
         then do
         let m = (!! 3) k
            in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ m)
         callCommand "sh open.sh"
         callCommand "sh delete.sh"
         else do
      l <- takeExtension `fmap`  (!! 4) `fmap` getDirectoryContents "/home/lui/photo/"
      if l == ".stl"
            then do
            let m = (!! 4) k
               in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ m)
            callCommand "sh open.sh"
            callCommand "sh delete.sh"
            else print "error"
            else  print "error"
