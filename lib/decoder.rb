class Decoder

  attr_reader :alphabet

  def initialize(encrypted_message)
    @alphabet = ("a".."z").to_a << " "
  end

end
