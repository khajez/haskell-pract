
isIdentifierStart :: Char -> Bool
isIdentifierStart '_' = False
isIdentifierStart c = c `elem` ['a'..'z']

isIdentifierPart :: Char -> Bool
isIdentifierPart ' ' = False
isIdentifierPart c = isIdentifierStart c || c `elem` ['A'..'Z'] || (c `elem` ['0'..'9']) || not (c `elem` ['$','%','#','@','&','*','^'])

isReserved :: String -> Bool
isReserved "" = False
isReserved s = s `elem` ["if", "then", "else", "module", "import"]

isValid :: String -> Bool
isValid "" = False
isValid s = not (isReserved s) && isIdentifierStart (head s) && all isIdentifierPart (tail s)