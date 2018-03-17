module Data.AlwaysTrueSpec ( spec ) where

import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

import Data.AlwaysTrue

spec :: Spec
spec = describe "Data.AlwaysTrue" $
    prop "should always unwrap to true" $
        \always -> getBool always === True


instance Arbitrary AlwaysTrue where
  arbitrary = return alwaysTrue
