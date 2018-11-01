require 'minitest/autorun'
require 'minitest/pride'
require './test/test_helper'
require './lib/enigma'

class EngimaTest < Minitest::Test

  def test_it_exists
    e = Enigma.new
    assert_instance_of Enigma, e
  end

  def test_it_encrypts
    e = Enigma.new
  end
end

# pry(main)> my_message = "this is so secret ..end.."
# => "this is so secret ..end.."
#
# pry(main)> output = e.encrypt(my_message, "12345", Date.today)
# => # encrypted message here
#
# pry(main)> output = e.encrypt(my_message) #key and date are optional (generate random key and use today's date)
# => # encrypted message here
