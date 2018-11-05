require 'date'
require './lib/encrypt'
require './lib/decrypt'
require './lib/offset'
require './lib/key_generator'


class Enigma
  attr_reader :alphabet

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def encrypt(message, key = key_generator.create_key, date = Date.today.strftime('%d%m%y'))
    encryption_hash = Hash.new
    encryption = some_method_to_encrypt_it(message)
    encryption_hash[:encryption] = encyrption
    encryption_hash[:key] = key
    encryption_hash[:date] = date
    to_encrypt
  end

  def decrypt
  end


end


# Variables = established character array
# Account for: Downcase incoming message, characters not in established character array
#
# DO LOGIC FOR ENCRYPTION/DECRYPTION


# Encrypt(message, key, date)
# The encrypt method returns a hash with three keys:
# :encryption => the encrypted String
# :key => the key used for encryption as a String
# :date => the date used for encryption as a String in the form DDMMYY
# decrypt(ciphertext, key, date)

# Decrypt
# The decrypt method takes a ciphertext String and the Key used for encryption
# as arguments. The decrypt method can optionally take a date as the third argument.
#  If no date is given, this method should use today’s date for decryption.
# The decrypt method returns a hash with three keys:
# :decryption => the decrypted String
# :key => the key used for decryption as a String
# :date => the date used for decryption as a String in the form DDMMYY
