module Data.Quicksort
  ( quicksort
  ) where

import qualified Data.List as List

-- Note: using List here is inefficient, but a good example nonetheless
quicksort :: Ord a => [a] -> [a]
quicksort []         = []
quicksort (pivot:xs) = quicksort left ++ (pivot : quicksort right)
  where
    (left, right) = List.partition (< pivot) xs
