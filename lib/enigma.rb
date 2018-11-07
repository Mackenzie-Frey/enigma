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

  def decrypt
  end


end
