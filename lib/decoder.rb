class Decoder

  attr_reader :alphabet

  def initialize(encrypted_message)
    @alphabet = ("a".."z").to_a << " "
    @encrypted_message = encrypted_message
  end

  def separate_encrypted_message
    @encrypted_message.downcase.split("")
  end
end
