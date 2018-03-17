module Data.AlwaysTrue
    ( AlwaysTrue
    , getBool
    , alwaysTrue
    ) where

newtype AlwaysTrue = AlwaysTrue { getBool :: Bool }
  deriving Show

alwaysTrue :: AlwaysTrue
alwaysTrue = AlwaysTrue True
