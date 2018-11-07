require './test/test_helper'

class EncoderTest < Minitest::Test

  def test_it_exists
    encoder = Encoder.new("Hello World")
    assert_instance_of Encoder, encoder
  end

  def test_it_has_an_alphabet
    encoder  = Encoder.new("Hello World")
    expected = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ']
    assert_equal expected, encoder.alphabet
  end

  def test_it_can_separate_message_and_downcase
    encoder  = Encoder.new("Hello wOrld")
    actual   = encoder.separate_message
    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal expected, actual
  end

  def test_it_encodes_one_letter
    encoder  = Encoder.new("a")
    assert_equal "c", encoder.encode([2])
  end

  def test_it_can_encode_word
    encoder  = Encoder.new("ab")
    assert_equal "cd", encoder.encode([2])
  end

  def test_it_can_encode_phrase
    encoder  = Encoder.new("ab ab")
    assert_equal "cdbcd", encoder.encode([2])
  end

  def test_special_characters_persist
    encoder  = Encoder.new("!% a")
    actual   = encoder.encode([2])
    expected = "!%bc"
    assert_equal expected, actual
  end

  def test_it_takes_shifts_as_an_array
    encoder  = Encoder.new("Hello World")
    actual   = encoder.encode([3, 27, 73, 20])
    expected = 'keder ohulw'
    assert_equal expected, actual
  end
end
