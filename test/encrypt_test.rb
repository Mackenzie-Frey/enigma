require './test/test_helper'

class EncryptTest < Minitest::Test

  def test_it_exists
    encrypt = Encrypt.new("Hello World")
    assert_instance_of Encrypt, encrypt
  end

  def test_it_has_an_alphabet
    encrypt  = Encrypt.new("Hello World")
    expected = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ']
    assert_equal expected, encrypt.alphabet
  end

  def test_it_splits_into_an_array
    encrypt  = Encrypt.new("hello world")
    actual   = encrypt.separate_message
    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal expected, actual
  end

  def test_it_can_downcase
    encrypt  = Encrypt.new("Hello wOrld")
    actual   = encrypt.separate_message
    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal expected, actual
  end

  def test_it_knows_message_character_index_in_alpha
    encrypt  = Encrypt.new("Hello wOrld")
    actual   = encrypt.alpha_index
    expected = 7
    assert_equal expected, actual
  end


  def test_characters_not_in_alphabet_persist
skip
    encrypt  = Encrypt.new("Hello wOrld!%()")
    actual   = encrypt.separate_message
    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal expected, actual
  end

  #Enumerator#with_index

end
