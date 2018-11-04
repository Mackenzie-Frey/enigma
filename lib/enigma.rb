require 'date'
require './lib/encrypt'
require './lib/decrypt'
require './lib/offset'
require './lib/key_generator'


class Enigma

  # def initialize
  #   @date = date
  # end

  def encrypt(message, key = '12345', date = Date.today.strftime('%d%m%y'))

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
