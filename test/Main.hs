module Main ( main ) where

import qualified Test.Hspec          as Hspec

import qualified Data.AlwaysTrueSpec
import qualified Data.QuicksortSpec

main :: IO ()
main = mapM_ Hspec.hspec specs

specs :: [Hspec.Spec]
specs =
  [ Data.AlwaysTrueSpec.spec
  , Data.QuicksortSpec.spec
  ]
