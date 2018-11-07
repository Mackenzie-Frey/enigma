class Enigma

  def encrypt(message, key = key_generator.create_key, date = Date.today.strftime('%d%m%y'))
    encryption_hash = Hash.new
    encryption = Encoder.new(message)
    shift = Shift.new(key, date).shift_amounts
    encryption_hash[:encryption] = encryption.encode(shift)
    encryption_hash[:key] = key
    encryption_hash[:date] = date
    encryption_hash
  end

  def decrypt(message, key = key_generator.create_key, date = Date.today.strftime('%d%m%y'))
    decryption_hash = Hash.new
    decryption = Decoder.new(message)
    shift = Shift.new(key, date).shift_amounts
    decryption_hash[:decryption] = decryption.decode(shift)
    decryption_hash[:key] = key
    decryption_hash[:date] = date
    decryption_hash
  end


end
