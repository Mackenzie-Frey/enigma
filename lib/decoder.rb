class Decoder

  attr_reader :alphabet

  def initialize(encrypted_message)
    @alphabet = ("a".."z").to_a << " "
    @encrypted_message = encrypted_message
  end

  def separate_encrypted_message
    @encrypted_message.downcase.split("")
  end

  def decode(shift)
    encrypted_characters = []
    separate_encrypted_message.map.with_index do |letter, index_in_string|
      index_num = @alphabet.index(letter)
      shift_index = index_in_string % shift.length
      rotated_alphabet =  @alphabet.rotate(-shift[shift_index])
      if index_num == nil
        encrypted_characters << letter
      else
        encrypted_characters << rotated_alphabet[index_num]
      end
    end
    encrypted_characters.join
  end

end
