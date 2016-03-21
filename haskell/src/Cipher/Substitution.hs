module Cipher.Substitution (
  SubstitutionCipher

) where
  import Data.Char

  class (Cipher a) => SubstitutionCipher a where
    lookUp :: a -> a

    encrypt m = map lookUp m

------


  data KeySpace = KeySpace { values :: [Char] } deriving (Show)


  reverseKeySpace :: String
  reverseKeySpace = "zyxwvutsrqponmlkjihgfedcba"
  identityKeySpace :: String
  identityKeySpace = "abcdefghijklmnopqrstuvwxyz"

  -- encrypt `text` using the substitution cypher, using `keySpace` as the Key Space
  -- considers: `keySpace` and `text` contain only english lowercase characters
  substitutionEncrypt :: String -> String -> String
  substitutionEncrypt keySpace "" = ""
  substitutionEncrypt keySpace (char:restOfText) =
    (lookupIn keySpace char) : (substitutionEncrypt keySpace restOfText)

  lookupIn :: String -> Char -> Char
  lookupIn keySpace char = keySpace !! (alphabetIndexOf char)

  alphabetIndexOf :: Char -> Int
  alphabetIndexOf char = (ord char - ord 'a')

  charOfIndex :: Int -> Char
  charOfIndex i = identityKeySpace !! i
