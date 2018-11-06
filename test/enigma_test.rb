require './test/test_helper'

class EngimaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
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
