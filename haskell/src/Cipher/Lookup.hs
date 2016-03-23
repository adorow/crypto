module Cipher.Lookup (
  lookupFromZipped,

  caesarCipherLookup,
  caesarDecipherLookup
) where

  import Data.List
  import Cipher.Util

  lookupFromZipped :: (Eq a) => [(a,a)] -> (a -> Maybe a)
  lookupFromZipped zipped = (\x -> lookup x zipped)

  caesarCipherLookup :: (Eq a) => [a] -> Int -> (a -> Maybe a)
  caesarCipherLookup alphabet shift = lookupFromZipped $ zip alphabet $ shiftListLeft alphabet shift

  caesarDecipherLookup :: (Eq a) => [a] -> Int -> (a -> Maybe a)
  caesarDecipherLookup alphabet shift = lookupFromZipped $ zip alphabet $ shiftListRight alphabet shift
