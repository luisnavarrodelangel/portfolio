module Main where
import System.Process
import Control.Monad
import Control.Concurrent
import System.Directory
--import Filesystem.Path.CurrentOS
import System.FilePath.Posix

main = forever $ do

   k <- getDirectoryContents "/home/lui/photo/"
   l <- takeExtension `fmap`  (!! 1) `fmap` getDirectoryContents "/home/lui/photo/"
   if length k ==  2
     then callCommand "clear"
     else do

     if l == ".jpg"
       then do
           print "index 1"
           let m = (!! 1) k
             in writeFile "png.sh"  ("mogrify -format png /home/lui/photo/" ++ m)
           callCommand "sh png.sh"
           print l

  --stl conversion index 0
           print "stl index 0"
           n <- getDirectoryContents "/home/lui/photo/"
           n' <- takeExtension `fmap`  (!! 0) `fmap` getDirectoryContents "/home/lui/photo/"
           if n' == ".png"

             then do

               let o = (!! 1) n
                  in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ o ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
               callCommand "sh stl.sh"

  --open in meshlab index 1
               print "meshlab index 1"
               p <- getDirectoryContents "/home/lui/photo/"
               let q = (!! 4) p
                  in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
               callCommand "sh open.sh"
             --  threadDelay 2000000
               callCommand "sh delete.sh"

  --stl conversion index 2
              else  do
              print "stl index 2"
              n <- getDirectoryContents "/home/lui/photo/"
              n' <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo/"
              if n' == ".png"
                then do
                  let o = (!! 2) n
                     in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ o ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
                  callCommand "sh stl.sh"

  --open in meshlab index 1
                  print "meshlab index 1"
                  p <- getDirectoryContents "/home/lui/photo/"
                  p' <- takeExtension `fmap`  (!! 1) `fmap` getDirectoryContents "/home/lui/photo/"
                  if p' == ".stl"
                    then do
                      let q = (!! 1) p
                        in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                      callCommand "sh open.sh"
                  --  threadDelay 2000000
                      callCommand "sh delete.sh"


  ---open in meshlab index 2
                    else do
                    print "meshlab index 2"
                    p <- getDirectoryContents "/home/lui/photo/"
                    p' <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo/"
                    if p' == ".stl"
                      then do
                        let q = (!! 2) p
                          in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                        callCommand "sh open.sh"
                    --  threadDelay 2000000
                        callCommand "sh delete.sh"

  ---open in meshlab index 3
                    else do
                    print "meshlab index 3"
                    p <- getDirectoryContents "/home/lui/photo/"
                    p' <- takeExtension `fmap`  (!! 3) `fmap` getDirectoryContents "/home/lui/photo/"
                    if p' == ".stl"
                     then do
                       let q = (!! 3) p
                         in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                       callCommand "sh open.sh"
                 --  threadDelay 2000000
                       callCommand "sh delete.sh"

  ---open in meshlab index 4
                     else do
                     print "meshlab index 4"
                     p <- getDirectoryContents "/home/lui/photo/"
                     let q = (!! 4) p
                        in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                     callCommand "sh open.sh"
                     callCommand "sh delete.sh"


                  else  do
                  print "llegamos"


  ----------------------------index 2
           threadDelay 200000
           else do
           print "index2 si"
           z <- getDirectoryContents "/home/lui/photo/"
           let m = (!! 2) z
             in writeFile "png.sh"  ("mogrify -format png /home/lui/photo/"  ++ m)
           callCommand "sh png.sh"
           print k
     --png conversion
           print "png index 2"
           n <- getDirectoryContents "/home/lui/photo/"
           n' <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo/"
           if n' == ".png"
--stl conversion
             --print "stl index 2"
             then do
               let o = (!! 2) n
                  in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ o ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
               callCommand "sh stl.sh"
             --print k

    --open in meshlab index 0
               print "meshlab index 0"
               p <- getDirectoryContents "/home/lui/photo/"
               p' <- takeExtension `fmap`  (!! 0) `fmap` getDirectoryContents "/home/lui/photo/"
               if p' == ".stl"
                 then do
                   let q = (!! 0) p
                    in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                   callCommand "sh open.sh"
             --  threadDelay 2000000
                   callCommand "sh delete.sh"
  --open in meshlab index 4

                 else do
                 print "meshlab index 4"
                 let q = (!! 4) p
                   in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                 callCommand "sh open.sh"
          --  threadDelay 2000000
                 callCommand "sh delete.sh"

     --stl conversion index 2
              else  do
              print "stl index 2"
              n <- getDirectoryContents "/home/lui/photo/"
              n' <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo/"
              if n' == ".png"
                then do
                  let o = (!! 2) n
                     in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ o ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
                  callCommand "sh stl.sh"

  --open in meshlab index 1
                  print "meshlab index 1"
                  p <- getDirectoryContents "/home/lui/photo/"
                  p' <- takeExtension `fmap`  (!! 1) `fmap` getDirectoryContents "/home/lui/photo/"
                  if p' == ".stl"
                    then do
                      let q = (!! 1) p
                        in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                      callCommand "sh open.sh"
                  --  threadDelay 2000000
                      callCommand "sh delete.sh"


  ---open in meshlab index 2
                    else do
                    print "meshlab index 2"
                    p' <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo/"
                    if p' == ".stl"
                    then do
                    let q = (!! 2) p
                      in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                    callCommand "sh open.sh"
                --  threadDelay 2000000
                    callCommand "sh delete.sh"

  ---open in meshlab index 3
                    else do
                    print "meshlab index 3"
                    p <- getDirectoryContents "/home/lui/photo/"
                    p' <- takeExtension `fmap`  (!! 3) `fmap` getDirectoryContents "/home/lui/photo/"
                    if p' == ".stl"
                    then do
                    let q = (!! 3) p
                      in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                    callCommand "sh open.sh"
               --  threadDelay 2000000
                    callCommand "sh delete.sh"

  ---open in meshlab index 4
                    else do
                    print "meshlab index 4"
                    p <- getDirectoryContents "/home/lui/photo/"
                    p' <- takeExtension `fmap`  (!! 4) `fmap` getDirectoryContents "/home/lui/photo/"
                    if p' == ".stl"
                    then do
                    let q = (!! 4) p
                      in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                    callCommand "sh open.sh"
              --  threadDelay 2000000
                    callCommand "sh delete.sh"

                    else do
                    print "done"
                else  do
                print "done"
