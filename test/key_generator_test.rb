require './test/test_helper'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test

  def test_it_exists
    key = KeyGenerator.new
    assert_instance_of KeyGenerator, key
  end

  def test_it_has_a_key
    new_key = KeyGenerator.new
    actual = new_key.key.length
    assert_equal 5, actual
    assert_instance_of String, new_key.key
  end

  def test_it_generates_a_random_key
    key_1 = KeyGenerator.new
    key_2 = KeyGenerator.new
    key_3 = KeyGenerator.new
    assert key_1.key != key_2.key
    assert key_2.key != key_3.key
  end

  def test_it_has_key_A
    new_key = KeyGenerator.new

    assert_instance_of Integer, new_key.a_key

    actual = new_key.a_key.to_s.length
    assert_equal 2, actual

    expected = (new_key.key[0] + new_key.key[1]).to_i
    actual = new_key.a_key
    assert_equal expected, actual
  end



end
