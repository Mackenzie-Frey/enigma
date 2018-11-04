require 'securerandom'

class KeyGenerator


  def create_key
    SecureRandom.random_number(99999).to_s.rjust(5, "0")
  end
end
