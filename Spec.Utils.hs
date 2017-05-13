import Test.Hspec
import Test.QuickCheck
import Utils(digits, joiner, shift, allRotations, fillBegin, fillEnd, prepareValues, nonDuplicateSequence)

main :: IO ()
main = hspec $ do
    describe "Utils.digits" $ do
        it "check digits with an Int of length 1" $ do
            digits 1 `shouldBe` [1]
        it "check digits with an Int of length 2" $ do
            digits 12 `shouldBe` [1,2]
        it "check digits with an Int of length 3" $ do
            digits 123 `shouldBe` [1,2,3]

    describe "Utils.joiner" $ do
        it "check joiner with an [Int] of length 1" $ do
            joiner [1] `shouldBe` 1
        it "check joiner with an [Int] of length 2" $ do
            joiner [1,2] `shouldBe` 12
        it "check joiner with an [Int] of length 3" $ do
            joiner [1,2,3] `shouldBe` 123

    describe "Utils.shift" $ do
        it "check shift with an [Int] of length 1" $ do
            shift [1] `shouldBe` [1]
        it "check shift with an [Int] of length 2" $ do
            shift [1,2] `shouldBe` [2,1]
        it "check shift with an [Int] of length 3" $ do
            shift [1,2,3] `shouldBe` [2,3,1]

    describe "Utils.allRotations" $ do
        it "check allRotations with an [Int] of length 1" $ do
            allRotations [1] `shouldBe` [[1]]
        it "check allRotations with an [Int] of length 2" $ do
            allRotations [1,2] `shouldBe` [[1,2],[2,1]]
        it "check allRotations with an [Int] of length 3" $ do
            allRotations [1,2,3] `shouldBe` [[1,2,3],[2,3,1],[3,1,2]]

    describe "Utils.fillBegin" $ do
        it "check fillBegin (no pad)" $ do
            fillBegin 1 `shouldBe` 1
        it "check fillBegin (one pad)" $ do
            fillBegin 2 `shouldBe` 10
        it "check fillBegin (two pads)" $ do
            fillBegin 3 `shouldBe` 100

    describe "Utils.fillEnd" $ do
        it "check fillEnd with one 9" $ do
            fillEnd 1 `shouldBe` 9
        it "check fillEnd with two 9" $ do
            fillEnd 2 `shouldBe` 99
        it "check fillEnd with three 9" $ do
            fillEnd 3 `shouldBe` 999

    describe "Utils.prepareValues" $ do
        it "check prepareValues with a length of 1" $ do
            prepareValues 1 `shouldBe` [1..9]
        it "check prepareValues with a length of 2" $ do
            prepareValues 2 `shouldBe` [10..99]
        it "check prepareValues with a length of 3" $ do
            prepareValues 3 `shouldBe` [100..999]

    describe "Utils.nonDuplicateSequence" $ do
        it "check that a sequence already exists" $ do
            nonDuplicateSequence 645 `shouldBe` True
        it "check that a sequence not already exists" $ do
            nonDuplicateSequence 456 `shouldBe` False