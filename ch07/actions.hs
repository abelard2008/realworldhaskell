import System.IO

str2action :: String -> IO ()
str2action input = putStrLn ("Data: "  ++ input)

list2actions :: [String] -> [IO ()]
list2actions = map str2action

numbers :: [Int]
numbers = [1..20]

strings :: [String]
strings = map show numbers

actions :: [IO ()]
actions = list2actions strings

printall :: IO ()
printall = runall actions

runall :: [IO ()] -> IO ()
runall [] = return ()
runall (firstelem:remainingelems) =
  do firstelem
     runall remainingelems

main = do str2action "String of the program"
          printall
          str2action "Done"
