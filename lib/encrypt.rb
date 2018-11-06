class Encrypt

  attr_reader :alphabet,
              :message

  def initialize(message)
    @message = message
    @alphabet = ("a".."z").to_a << " "
  end

  def separate_message
    @message.downcase.split("")
  end


  def encode(shift)
    encrypted_characters = []
    separate_message.map do |letter|

      index_num = @alphabet.index(letter)
      rotated_alphabet =  @alphabet.rotate(shift)

      if index_num == nil
        encrypted_characters << letter
      else
        encrypted_characters << rotated_alphabet[index_num]
      end

    end
    encrypted_characters.join
  end
end
