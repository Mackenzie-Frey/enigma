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
    expected = [7, 4, 11, 11, 14, 26, 22, 14, 17, 11, 3]
    assert_equal expected, actual
  end

  def test_it_encrypts_one_letter
    message = "a"
    encrypt  = Encrypt.new(message)
    shift    = Shift.new

    assert_equal "c", encrypt.rotate_alphabet(message, 2)

    # actual   = encrypt.rotate_alphabet(shift_array)
    # assert_instance_of Array, actual
    #
    # actual   = encrypt.rotate_alphabet(shift_array).count
    # assert_equal 4, actual
    #
    # actual   = encrypt.rotate_alphabet(shift_array)[0].count
    # assert_equal 27, actual
  end

  def test_it_can_rotate_one_letter


  end

# set each array to a variable
# do if statements for matching the index to the string to the index of the alphabet
# do if statements, name

  def test_characters_not_in_alphabet_persist
skip
    encrypt  = Encrypt.new("Hello wOrld!%()")
    actual   = encrypt.separate_message
    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal expected, actual
  end
end
