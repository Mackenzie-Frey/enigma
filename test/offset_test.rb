require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  # def test_it_
  #   enigma = Enigma.new
  #   enigma.alphabet
  # end

end
