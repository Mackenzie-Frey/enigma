require './test/test_helper'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test

  def test_it_exists
    key = KeyGenerator.new
    assert_instance_of KeyGenerator, key
  end

  def test_it_creates_a_key
    key = KeyGenerator.new
    new_key = key.create_key
    assert_equal 5, new_key.length
  end

  def test_it_generates_a_random_key
    key_1 = KeyGenerator.new
    key_2 = KeyGenerator.new
    key_3 = KeyGenerator.new
    new_key_1 = key_1.create_key
    new_key_2 = key_2.create_key
    new_key_3 = key_3.create_key
    assert new_key_1 != new_key_2
    assert new_key_2 != new_key_3
  end
end
