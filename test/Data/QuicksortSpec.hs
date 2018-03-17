module Data.QuicksortSpec ( spec ) where

import qualified Data.List             as List
import           Test.Hspec
import           Test.Hspec.QuickCheck
import           Test.QuickCheck

import           Data.Quicksort

spec :: Spec
spec = describe "Data.Quicksort" $ do
    it "should sort a numeric list" $
        quicksort ([5, 2, 7, 1, 9] :: [Int]) == [1, 2, 5, 7, 9]

    prop "should sort a list of ints" $
        \(xs :: [Int]) -> quicksort xs === List.sort xs

    prop "should sort a list of strings" $
        \(xs :: [String]) -> quicksort xs === List.sort xs
