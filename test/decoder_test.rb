require './test/test_helper'

class DecoderTest < Minitest::Test

  def test_it_exists
    decoder = Decoder.new('keder ohulw')
    assert_instance_of Decoder, decoder
  end

  def test_it_has_an_alphabet
    decoder = Decoder.new("Hello World")
    expected = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ']
    assert_equal expected, decoder.alphabet
  end

  def test_it_can_separate_message_and_downcase
    decoder  = Decoder.new('keder ohulw')
    actual   = decoder.separate_message
    expected = ["k", "e", "d", "e", "r", " ", "o", "h", "u", "l", "w"]
    assert_equal expected, actual
  end

end
