module Main where
import System.Process
import Control.Monad
import Control.Concurrent
import System.Directory
import Filesystem.Path.CurrentOS
import System.FilePath.Posix

   --takeExtension l

main = forever $ do

   k <- getDirectoryContents "/home/lui/photo"
   l <- takeExtension `fmap`  (!! 1) `fmap` getDirectoryContents "/home/lui/photo"
   if k == [".", ".."]
     then callCommand "clear"
     else do
     if l == ".jpg"

       then do
           print "index 1"
           let m = (!! 1) k
             in writeFile "png.sh"  ("mogrify -format png /home/lui/photo/"  ++ m)
           callCommand "sh png.sh"
           print l

  --stl convertion index 1
           print "stl index 1"
           n <- getDirectoryContents "/home/lui/photo"
           n' <- takeExtension `fmap`  (!! 1) `fmap` getDirectoryContents "/home/lui/photo"
           if n' == ".png"

             then do

               let o = (!! 1) n
                  in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ o ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
               callCommand "sh stl.sh"

  --open in meshlab index 1
               print "meshlab index 1"
               p <- getDirectoryContents "/home/lui/photo"
               let q = (!! 4) p
                  in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
               callCommand "sh open.sh"
             --  threadDelay 2000000
               callCommand "sh delete.sh"

  --stl convertion index 2
              else  do
              print "stl index 2"
              n <- getDirectoryContents "/home/lui/photo"
              n' <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo"
              if n' == ".png"
                then do
                  let o = (!! 2) n
                     in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ o ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
                  callCommand "sh stl.sh"

  --open in meshlab index 1
                  print "meshlab index 1"
                  p <- getDirectoryContents "/home/lui/photo"
                  p' <- takeExtension `fmap`  (!! 1) `fmap` getDirectoryContents "/home/lui/photo"
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
                    p <- getDirectoryContents "/home/lui/photo"
                    p' <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo"
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
                    p <- getDirectoryContents "/home/lui/photo"
                    p' <- takeExtension `fmap`  (!! 3) `fmap` getDirectoryContents "/home/lui/photo"
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
                     p <- getDirectoryContents "/home/lui/photo"
                     p' <- takeExtension `fmap`  (!! 4) `fmap` getDirectoryContents "/home/lui/photo"
                     if p' == ".stl"
                      then do
                        let q = (!! 4) p
                          in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                        callCommand "sh open.sh"
                    --  threadDelay 2000000
                        callCommand "sh delete.sh"

                     else do
                     print "luis"


                  else  do
                  print "lllegamos"




  ----------------------------index 2

           else do
           print "index2 si"
           let m = (!! 2) k
             in writeFile "png.sh"  ("mogrify -format png /home/lui/photo/"  ++ m)
           callCommand "sh png.sh"
           print l
     --stl convertion
           print "stl index 1"
           n <- getDirectoryContents "/home/lui/photo"
           n' <- takeExtension `fmap`  (!! 1) `fmap` getDirectoryContents "/home/lui/photo"
           if n' == ".png"

             then do
               let o = (!! 1) n
                  in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ o ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
               callCommand "sh stl.sh"


    --open in meshlab index 2
               print "meshlab index 2"
               p <- getDirectoryContents "/home/lui/photo"
               p' <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo"
               if p' == ".stl"
                 then do
                   let q = (!! 2) p
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

     --stl convertion index 2
              else  do
              print "stl index 2"
              n <- getDirectoryContents "/home/lui/photo"
              n' <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo"
              if n' == ".png"
                then do
                  let o = (!! 2) n
                     in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ o ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
                  callCommand "sh stl.sh"

  --open in meshlab index 1
                  print "meshlab index 1"
                  p <- getDirectoryContents "/home/lui/photo"
                  p' <- takeExtension `fmap`  (!! 1) `fmap` getDirectoryContents "/home/lui/photo"
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
                    p <- getDirectoryContents "/home/lui/photo"
                    p' <- takeExtension `fmap`  (!! 2) `fmap` getDirectoryContents "/home/lui/photo"
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
                    p <- getDirectoryContents "/home/lui/photo"
                    p' <- takeExtension `fmap`  (!! 3) `fmap` getDirectoryContents "/home/lui/photo"
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
                    p <- getDirectoryContents "/home/lui/photo"
                    p' <- takeExtension `fmap`  (!! 4) `fmap` getDirectoryContents "/home/lui/photo"
                    if p' == ".stl"
                    then do
                    let q = (!! 4) p
                      in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                    callCommand "sh open.sh"
              --  threadDelay 2000000
                    callCommand "sh delete.sh"

                    else do
                    print "luis"


                else  do
                print "lllegamos"









------------------------------------------------------------

         {--do

            let m = (!! 2) k
              in writeFile "png.sh"  ("mogrify -format png /home/lui/photo/"  ++ m)
            callCommand "sh png.sh"
            print l--}



         --callCommand "clear"

{--main = forever $ do
    l <- getDirectoryContents "/home/lui/photo"
    if l /= [".", ".."]
      then do
          let m = (!! 2) l
            in writeFile "png.sh"  ("mogrify -format png /home/lui/photo/"  ++ m)
          callCommand "sh png.sh"
          print l
          n <- getDirectoryContents "/home/lui/photo"
          let o = (!! 1) n
             in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ o ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
          callCommand "sh stl.sh"
          p <- getDirectoryContents "/home/lui/photo"
          let q = (!! 2) p
             in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
          callCommand "sh open.sh"
        --  threadDelay 2000000
          callCommand "sh delete.sh"

      else callCommand "clear"
--}





--------------------------------------------------------------------
--first method
       {-- main =  do
           l <- getDirectoryContents "/home/lui/photo"
           if l == [".", ".."]
             then print "nada" --callCommand "clear"
              else let m = (!! 2) l
                     in writeFile "png.sh"  ("mogrify -format png /home/lui/photo/"  ++ m)
           callCommand "sh png.sh"
         --  threadDelay 2000000
           print l
           n <- getDirectoryContents "/home/lui/photo"
           if n /= [".", ".."]
             then let o = (!! 1) n
               in writeFile "stl.sh" ("image2stl " ++ "/home/lui/photo/" ++ o ++ " -scale 0.05 -mask_val 5. -RGBA_weights 1. 0. 1. 0. -gaussian_filter 1")
                 else print "nada2"
           callCommand "sh stl.sh"
           p <- getDirectoryContents "/home/lui/photo"
           if p /= [".", ".."]
             then let q = (!! 2) p
               in writeFile "open.sh" ("meshlab " ++ "/home/lui/photo/" ++ q)
                else print "nada3"
           callCommand "sh open.sh"
           callCommand "sh delete.sh"
           --}

       --putStrLn $ (!! 1) l
       ----------------------------------------

       --`fmap` l
       --print
       --  d <- getCurrentDirectory
       --print d
