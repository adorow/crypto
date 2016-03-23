module Cipher.Util (
  englishLowercaseAlphabet,
  englishUppercaseAlphabet,

  shiftListLeft,
  shiftListRight
) where

  englishLowercaseAlphabet :: [Char]
  englishLowercaseAlphabet = "abcdefghijklmnopqrstuvwxyz"

  englishUppercaseAlphabet :: [Char]
  englishUppercaseAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

  shiftListLeft :: [a] -> Int -> [a]
  shiftListLeft xs shift = drop shift xs ++ take shift xs

  shiftListRight :: [a] -> Int -> [a]
  shiftListRight xs shift = drop (length xs - shift) xs ++ take (length xs - shift) xs
