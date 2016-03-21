module Cipher (
  Cipher(..)
) where

  class Cipher a where
    encrypt :: [a] -> [a]
    --decrypt :: [a] -> [a]

  --newtype KeySpace a = KeySpace { values :: [a] } deriving (Eq, Show)

  --instance Functor KeySpace where
  --    fmap f ks = KeySpace (map f . values $ ks)
