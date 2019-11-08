import Data.List
compress :: String -> [(Int, Char)]
compress "" = []
compress s = [ (length x, head x) | x <- group s ]

decompress ::  [(Int, Char)] -> String
decompress [] = ""
decompress l = concat [replicate (fst la) (snd la) | la <- l ]