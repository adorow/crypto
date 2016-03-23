module Cipher.Substitution (
  substitutionCipher,
  substitutionCipherKeepMissing,
  substitutionCipherIgnoreMissing
) where

  import Data.Maybe

  substitutionCipher :: (Eq a) => (a -> a) -> [a] -> [a]
  substitutionCipher lookupFunction text = map lookupFunction text

  substitutionCipherKeepMissing :: (Eq a) => (a -> Maybe a) -> [a] -> [a]
  substitutionCipherKeepMissing lookupFunction text =
    map (\x -> fromMaybe x . lookupFunction $ x) text

  substitutionCipherIgnoreMissing :: (Eq a) => (a -> Maybe a) -> [a] -> [a]
  substitutionCipherIgnoreMissing lookupFunction text =
    substitutionCipherKeepMissing lookupFunction $ filter (isJust . lookupFunction) text

  vignereCipher :: (Eq a) => [(a -> a)] -> [a] -> [a]
  vignereCipher lookupFunctions text = zipWith (\lookupFunction -> \char -> lookupFunction char) (take (length text) . cycle $ lookupFunctions) text
