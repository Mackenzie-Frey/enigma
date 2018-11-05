require 'securerandom'

class Shift

  attr_reader :key

  def initialize
    @key = SecureRandom.random_number(99999).to_s.rjust(5, "0")
    @shift_amounts = []
  end

  def a_key
    (@key[0] + @key[1]).to_i
  end

  def b_key
    (@key[1] + @key[2]).to_i
  end

  def c_key
    (@key[2] + @key[3]).to_i
  end

  def d_key
    (@key[3] + @key[4]).to_i
  end

  def shift_a
    binding.pry
    .offset_a + key.a_key
  end

  def shift_b

  end

  def shift_c

  end

  def shift_d

  end

  def shift_amounts
    shift_a
    @shift_amounts
  end
end
