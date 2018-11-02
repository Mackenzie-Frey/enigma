require 'minitest/autorun'
require 'minitest/pride'
require './test/test_helper'
require './lib/enigma'

class EngimaTest < Minitest::Test

  def test_it_exists
    e = Enigma.new
    assert_instance_of Enigma, e
  end

  def test_it_can_encrypt
    e = Enigma.new
    my_message = 'this is so secret ..end..'
    output_1 = e.encrypt(my_message, "12345", Date.today)
    assert_equal 'dkjsfhskdjhf', output_1
    # above string will be determined in future
    output_2 = e.encrypt(my_message)
    #key and date are optional (generate random key and use today's date)
    assert_equal 'dskjhfsdkjhf', output_2
  end
end

date = date.parse(11-01-2018)
