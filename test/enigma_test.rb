require './test/test_helper'
require './lib/enigma'

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
skip
    e = Enigma.new
    my_message = 'this is so secret ..end..'
    output_1 = e.encrypt(my_message, "12345", Date.today)
    assert_equal 'dkjsfhskdjhf', output_1
    # above string will be determined in future
    output_2 = e.encrypt(my_message)
    #key and date are optional (generate random key and use today's date)
    assert_equal 'dskjhfsdkjhf', output_2
  end

  def test_it_can_decrypt
skip
    e = Enigma.new
    input = 'kfdsjhds'
    assert_equal 'dsfkjhdskfj', input.decrypt
  end
end

# date = date.parse(11-01-2018)
# .tr string method to translate
