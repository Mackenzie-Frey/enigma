require './test/test_helper'

class DecoderTest < Minitest::Test

  def test_it_exists
    decoder = Decoder.new('keder ohulw')
    assert_instance_of Decoder, decoder
  end

  def test_it_has_an_alphabet
    decoder = Decoder.new("keder ohulw")
    expected = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ']
    assert_equal expected, decoder.alphabet
  end

  def test_it_can_separate_message_and_downcase
    decoder  = Decoder.new('keder ohulw')
    actual   = decoder.separate_encrypted_message
    expected = ["k", "e", "d", "e", "r", " ", "o", "h", "u", "l", "w"]
    assert_equal expected, actual
  end

  def test_it_decodes_one_letter
    decoder  = Decoder.new("c")
    assert_equal "a", decoder.decode([2])
  end

  def test_it_can_decode_word
    decoder = Decoder.new("cd")
    assert_equal "ab", decoder.decode([2])
  end

  def test_it_can_decode_phrase
    decoder  = Decoder.new("cdbcd")
    assert_equal "ab ab", decoder.decode([2])
  end

  def test_special_characters_persist
    decoder  = Decoder.new("!%bc")
    actual   = decoder.decode([2])
    expected = "!% a"
    assert_equal expected, actual
  end

  def test_it_takes_shifts_as_an_array
    decoder  = Decoder.new("keder ohulw")
    actual   = decoder.decode([3, 27, 73, 20])
    expected = 'hello world'
    assert_equal expected, actual
  end

end
