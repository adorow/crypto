module Cipher.Caesar where

  import Cipher.Substitution

  identityKeySpaceWithShift n = keySpaceWithShift identityKeySpace n

  keySpaceWithShift keySpace 0 = keySpace
  keySpaceWithShift keySpace n = [ shiftChar x n | x <- keySpace ]

  shiftSpace keySpace 0 = keySpace

  -- assumes only positives (todo: exception handling or handle negatives)
  shiftChar char 0 = char
  shiftChar char n = charOfIndex ((alphabetIndexOf char + n) `mod` 26)

  caesarEncrypt alphabet shift text = substitutionEncrypt (keySpaceWithShift alphabet shift) text

  caesarEncryptIdentity shift text = caesarEncrypt identityKeySpace shift text


  -------
  caesarLookup :: (Eq a) => [a] -> Int -> (a -> Maybe a)
  caesarLookup alphabet shift = (
    \ch ->
      --ch `elemIndex` alphabet
      Nothing
  )
