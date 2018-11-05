require './lib/key_generator'
require './lib/offset'

class Shift

  def initialize
    @shift_amounts = []
  end

  def shift_a
    binding.pry
    offset.offset_a + key.a_key
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
