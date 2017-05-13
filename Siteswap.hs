module Siteswap (siteswap) where

import Utils(digits, shift, joiner, allRotations, prepareValues, nonDuplicateSequence)
import Data.List (sort)

{-
-- Check if a Int is a valid siteswap sequence
-- The check is : Sum [Int] / Length [Int] have to be a finite number and the given period
-- Sequence 531, Nb 3 => 5 + 3 + 1 / 3 = 3 => True
-- Sequence 65, Nb 3 => 6 + 5 / 2 = 5.5 => False (not a finite number)
-- Sequence 645, Nb 3 => 6 + 4 + 5 / 3 = 5 => False (not the requested number which is 3)
-}
isSequenceCorrect :: Int -> Int -> Bool
isSequenceCorrect seq nb = do
    let timedSeq = zipWith (+) (digits seq) [0..(length(digits seq) - 1)]
    let moduloTimedSeq = map (\x -> if x >= nb then (x - nb) else x) timedSeq
    let finiteCalc = fromIntegral(sum (digits seq) `div` length(digits seq))
    let roundFiniteCalc = fromRational (fromIntegral(sum (digits seq) `div` length(digits seq)))
    let roundCalc = fromIntegral(sum (digits seq)) / fromIntegral(length(digits seq))
    roundFiniteCalc == roundCalc && finiteCalc == nb && sort moduloTimedSeq == [0..(length(digits seq) - 1)]

-- Show [Int] of nb periods which are a valid siteswap sequence
siteswap :: Int -> [Int]
siteswap nb
    | nb == 0 = []
    | nb == 1 = [1..9]
    | otherwise = [x
        | x <- prepareValues nb,
            isSequenceCorrect x nb,
            nonDuplicateSequence x
    ]