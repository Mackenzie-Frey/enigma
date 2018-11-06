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
    actual   = decoder.separate_encrypted_message
    expected = ["k", "e", "d", "e", "r", " ", "o", "h", "u", "l", "w"]
    assert_equal expected, actual
  end

  def test_it_decodes_one_letter
    decoder  = Decoder.new("a")
    assert_equal "c", decoder.decode([2])
  end

  def test_it_can_decode_word
    decoder = Decoder.new("ab")
    assert_equal "cd", decoder.decode([2])
  end

  def test_it_can_decode_phrase
    decoder  = Decoder.new("ab ab")
    assert_equal "cdbcd", decoder.decode([2])
  end

  def test_special_characters_persist
    decoder  = Decoder.new("!% a")
    actual   = decoder.decode([2])
    expected = "!%bc"
    assert_equal expected, actual
  end

  def test_it_takes_shifts_as_an_array
    decoder  = Decoder.new("Hello World")
    actual   = decoder.decode([3, 27, 73, 20])
    expected = 'keder ohulw'
    assert_equal expected, actual
  end

end
