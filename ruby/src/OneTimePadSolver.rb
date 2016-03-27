#!/usr/bin/ruby
# Given an existing message 'm' of length 'n', and its encryption 'c' of length 'n*2';
# Find out the encryption 'c2' for a message 'm2' of length 'n'

# -----------------------------------------------------------------------------------------------------------------
# * This is based on a question from Coursera's Cryptography course: https://class.coursera.org/crypto-preview
# Suppose you are told that the one time pad encryption of the message "attack at dawn" is 09e1c5f70a65ac519458e7e53f36
# (the plaintext letters are encoded as 8-bit ASCII and the given ciphertext is written in hex).
# What would be the one time pad encryption of the message "attack at dusk" under the same OTP key?
# -----------------------------------------------------------------------------------------------------------------
$print_info = true

require_relative 'OneTimePad'

def debug(text)
  if ($print_info)
    puts text
  end
end

m = "attack at dawn"
c = "09e1c5f70a65ac519458e7e53f36"
m2 = "attack at dusk"

debug("Given the message m=\"%s\"" % m)
debug("And its cipher text c=\"%s\"" % c)

otp = OneTimePad.new()
# in an OTP, E(c,m)=k ; because E(k,m)=c => k xor m = c ; and by the properties of xor, c xor m = k
k = otp.encrypt(c, m)
c2 = otp.encrypt(k, m2)

debug("The ciphertext for a message m2=\"%s\"" % m2)
debug("Is the ciphertext c2=\"%s\"" % c2)
