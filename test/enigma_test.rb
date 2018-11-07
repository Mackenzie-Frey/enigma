require './test/test_helper'

class EngimaTest < Minitest::Test

  def test_it_exists
    enigma   = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_can_create_key
    enigma   = Enigma.new

    actual   = enigma.create_key.length
    expected = 5
    assert_equal expected, actual

    assert_instance_of Integer, enigma.create_key[0].to_i
  end

  def test_it_can_encrypt
    enigma   = Enigma.new
    actual   = enigma.encrypt("hello world", "02715", "040895")
    expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
    assert_equal expected, actual
  end

  def test_it_can_decrypt
    enigma   = Enigma.new
    actual   = enigma.decrypt("keder ohulw", "02715", "040895")
    expected = {decryption: "hello world", key: "02715", date: "040895"}
    assert_equal expected, actual
  end
end
