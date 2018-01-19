import Data.Char

upcaseFirst (c:cs) = (toUpper c): upcaseFirst cs

cameCase :: String -> String
cameCase xs = concat (map upcaseFirst (words xs))

main = print 5
