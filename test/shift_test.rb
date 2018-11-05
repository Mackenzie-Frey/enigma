require './test/test_helper'
require './lib/shift'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_it_has_a_key
    shift = Shift.new
    actual = shift.key.length
    assert_equal 5, actual
    assert_instance_of String, shift.key
  end

  def test_it_generates_a_random_key
    shift_1 = Shift.new
    shift_2 = Shift.new
    shift_3 = Shift.new
    assert shift_1.key != shift_2.key
    assert shift_2.key != shift_3.key
  end

  def test_it_has_key_a
    new_key = KeyGenerator.new

    assert_instance_of Integer, new_key.a_key

    actual = new_key.a_key.to_s.length
    assert_equal 2, actual

    expected = (new_key.key[0] + new_key.key[1]).to_i
    actual = new_key.a_key
    assert_equal expected, actual
  end

  def test_it_has_keys_a_b_and_c
    new_key = KeyGenerator.new
    expected = (new_key.key[1] + new_key.key[2]).to_i
    actual = new_key.b_key
    assert_equal expected, actual

    expected = (new_key.key[2] + new_key.key[3]).to_i
    actual = new_key.c_key
    assert_equal expected, actual

    expected = (new_key.key[3] + new_key.key[4]).to_i
    actual = new_key.d_key
    assert_equal expected, actual
  end

  def test_it_has_empty_shift_array
    shift  = Shift.new
    actual = shift.shift_amounts
    assert_equal [], actual
  end

  def test_it_knows_shifts
    shift = Shift.new
    assert_instance_of Array, shift.shift_amounts

    actual   = shift.shift_amounts.length
    expected = 4
    assert_equal expected, actual

    actual = shift.shift_amounts.first
    assert_instance_of Integer, actual
  end




end
