require './test/test_helper'

class EngimaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_has_an_alphabet
    enigma = Enigma.new
    expected = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ']
    assert_equal expected, enigma.alphabet
  end

  def test_it_can_encrypt
    enigma = Enigma.new
    actual = enigma.encrypt("hello world", "02715", "040895")
    expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
    assert_equal expected, actual
    actual = enigma.encrypt("hello world").key
    # assert_instance_of String, actual
    # assert_equal 0, actual

    # expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
    # assert_equal expected, actual
  end

  def test_it_can_decrypt
skip
    enigma = Enigma.new
    input = 'kfdsjhds'
    assert_equal 'dsfkjhdskfj', enigma.decrypt
  end
end

# date = date.parse(11-01-2018)
# .tr string method to translate
