require 'securerandom'

class KeyGenerator

  attr_reader :key

  def initialize
    @key = SecureRandom.random_number(99999).to_s.rjust(5, "0")
  end

  def a_key
    (@key[0] + @key[1]).to_i
  end

end
