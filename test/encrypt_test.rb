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

  def test_it_can_separate_message_and_downcase
    encrypt  = Encrypt.new("Hello wOrld")
    actual   = encrypt.separate_message
    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal expected, actual
  end

  def test_it_encrypts_one_letter
    encrypt  = Encrypt.new("a")
    assert_equal "c", encrypt.encode(2)
  end

  def test_it_can_encrypt_word
    encrypt  = Encrypt.new("ab")
    assert_equal "cd", encrypt.encode(2)
  end


#   def test_special_characters_persist
# skip
#     encrypt  = Encrypt.new("Hello wOrld!%()")
#     actual   = encrypt.separate_message
#     expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
#     assert_equal expected, actual
#   end
end
