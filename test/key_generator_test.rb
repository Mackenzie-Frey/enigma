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
    assert_instance_of String, new_key
  end

  def test_it_generates_a_random_key
skip
    key_1 = KeyGenerator.new
    key_2 = KeyGenerator.new
    key_3 = KeyGenerator.new
    new_key_1 = key_1.create_key
    new_key_2 = key_2.create_key
    new_key_3 = key_3.create_key
    assert new_key_1 != new_key_2
    assert new_key_2 != new_key_3
  end

  def test_it_has_key_A
skip
    key = KeyGenerator.new
    new_key = key.create_key
    assert_instance_of Integer, key.a_key
    actual = key.a_key.to_s.length
    assert_equal 2, actual
    expected = (new_key[0] + new_key[1]).to_i
    assert_equal expected, key.a_key
  end



end
