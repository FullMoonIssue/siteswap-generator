module Utils (digits, shift, joiner, allRotations, fillBegin, fillEnd, prepareValues, nonDuplicateSequence) where

-- Split an Int into a [Int]
digits :: Int -> [Int]
digits n = map (\x -> read [x] :: Int) (show n)

-- Join a [Int] to an Int
joiner :: [Int] -> Int
joiner = read . concatMap show

-- Make a shift of a [Int]
shift :: [Int] -> [Int]
shift (x:xs) = xs ++ [x]

-- Get all the shifts of a [Int]
allRotations :: [Int] -> [[Int]]
allRotations l = take (length l) (iterate shift l)

-- Pad Right with (x - 1) 0s after an initial 1
fillBegin :: Int -> Int
fillBegin x = joiner ([1] ++ take (x - 1) (repeat 0))

-- Pad Right with x 9s
fillEnd :: Int -> Int
fillEnd x = joiner (take (x) (repeat 9))

-- Prepare all the numbers between the min (minimum first digit => 1) and the max of a number of period
prepareValues :: Int -> [Int]
prepareValues nb = [fillBegin(nb)..fillEnd(nb)]

-- Check if a sequence already exists
nonDuplicateSequence :: Int -> Bool
nonDuplicateSequence x = maximum (allRotations (digits x)) == digits x