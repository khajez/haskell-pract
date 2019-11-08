shift :: (Integral a) => (a, a) -> a -> (a, a)
shift (h, m) s = ( ( mins `div` 60 ) `mod` 24, mins `mod` 60 )
    where mins = (h * 60) + m + s

isEarlier :: (Integral a) => (a, a) -> (a, a) -> Bool
isEarlier (h1, m1) (h2, m2) = h1 < h2 || ( (h1 == h2) && (m1 < m2))

type StartDate = (Int, Int)
type EndDate = (Int, Int)
type Event = (StartDate, Int, String)
type EventCreated = (StartDate, EndDate, String)

createEvent :: StartDate -> Int -> String -> EventCreated
createEvent (startHour, startMin) duration title = ( (startHour, startMin),  (shift (startHour, startMin) duration), title) 