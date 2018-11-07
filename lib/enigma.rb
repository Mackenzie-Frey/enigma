require 'securerandom'
require 'date'
require './lib/encoder'
require './lib/shift'

class Enigma

  def create_key
    SecureRandom.random_number(99999).to_s.rjust(5, "0")
  end

  def encrypt(message, key = create_key, date = Date.today.strftime('%d%m%y'))
    encryption_hash = Hash.new
    encryption = Encoder.new(message)
    shift = Shift.new(key, date).shift_amounts
    encryption_hash[:encryption] = encryption.encode(shift)
    encryption_hash[:key] = key
    encryption_hash[:date] = date
    encryption_hash
  end

  def decrypt(message, key = create_key, date = Date.today.strftime('%d%m%y'))
    decryption_hash = Hash.new
    decryption = Decoder.new(message)
    shift = Shift.new(key, date).shift_amounts
    decryption_hash[:decryption] = decryption.decode(shift)
    decryption_hash[:key] = key
    decryption_hash[:date] = date
    decryption_hash
  end


end
