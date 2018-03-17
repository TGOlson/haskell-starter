module Main ( main ) where

import Data.RequestExample

main :: IO ()
main = getTodo 1 >>= print
