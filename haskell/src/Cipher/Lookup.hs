module Cipher.Lookup (
  lookupFromZipped,
  caesarCipherLookup
) where

  import Data.List
  import Cipher.Util

  lookupFromZipped :: (Eq a) => [(a,a)] -> (a -> Maybe a)
  lookupFromZipped zipped = (\x -> lookup x zipped)

  caesarCipherLookup :: (Eq a) => [a] -> Int -> (a -> Maybe a)
  caesarCipherLookup alphabet shift = lookupFromZipped $ zip alphabet $ shiftList alphabet shift
