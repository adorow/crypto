module Cipher.Util (
  englishLowercaseAlphabet,
  englishUppercaseAlphabet,

  shiftList
) where

  englishLowercaseAlphabet :: [Char]
  englishLowercaseAlphabet = "abcdefghijklmnopqrstuvwxyz"

  englishUppercaseAlphabet :: [Char]
  englishUppercaseAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

  shiftList :: [a] -> Int -> [a]
  shiftList xs shift = drop shift xs ++ take shift xs
