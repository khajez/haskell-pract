import Data.Char
table = zip (['a'..'z'] ++ [' ']) ([chr((ord x) + 3) | x <- ['a'..'w']] ++ ['a','b','c',' '])

