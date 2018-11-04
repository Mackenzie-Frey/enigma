require './test/test_helper'
require './lib/enigma'

class EngimaTest < Minitest::Test

  def test_it_exists
    e = Enigma.new
    assert_instance_of Enigma, e
  end

  def test_it_has_an_alphabet
    e = Enigma.new
    alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
    assert_instance_of Array, alphabet
    assert_equal 27, alphabet.count
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
    e = Enigma.new
    input = 'kfdsjhds'
    assert_equal 'dsfkjhdskfj', input.decrypt
  end
end

date = date.parse(11-01-2018)
