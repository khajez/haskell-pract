triangleSides :: Int -> Int -> Int -> Bool
triangleSides a b c = (a + b) > c && (b + c) > a && (a + c) > b

pythagoreanTriple :: Int -> Int -> Int -> Bool
pythagoreanTriple a b c = sum sq == 2 * maximum sq
    where sq = map (^2) [a, b, c]