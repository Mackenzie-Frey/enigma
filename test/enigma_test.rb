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
  end

  def test_it_can_decrypt
    enigma = Enigma.new
    actual = enigma.decrypt("keder ohulw", "02715", "040895")
    expected = {decryption: "hello world", key: "02715", date: "040895"}
    assert_equal expected, actual
  end
  
end

# date = date.parse(11-01-2018)
# .tr string method to translate
