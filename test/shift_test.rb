require './test/test_helper'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_a_key_can_be_provided
    shift  = Shift.new("09032")
    actual = shift.key
    assert_equal "09032", actual
  end

  def test_it_has_a_key
    shift  = Shift.new
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

  def test_it_has_the_key_a
    shift = Shift.new
    assert_instance_of Integer, shift.a_key

    expected = (shift.key[0] + shift.key[1]).to_i
    actual   = shift.a_key
    assert_equal expected, actual
  end

  def test_it_has_the_keys_a_b_and_c
    shift    = Shift.new
    expected = (shift.key[1] + shift.key[2]).to_i
    actual   = shift.b_key
    assert_equal expected, actual

    expected = (shift.key[2] + shift.key[3]).to_i
    actual   = shift.c_key
    assert_equal expected, actual

    expected = (shift.key[3] + shift.key[4]).to_i
    actual   = shift.d_key
    assert_equal expected, actual
  end

  def test_it_knows_date_if_date_is_given
    shift    = Shift.new("11111","051118")
    actual   = shift.date
    expected = "051118"
    assert_equal expected, actual
  end

  def test_it_reformats_date_to_DDMMYY_if_no_date_given
    shift    = Shift.new
    actual   = shift.date
    expected = "051118"
    assert_equal expected, actual
  end

  def test_it_can_square_the_date
    shift    = Shift.new
    actual   = shift.date_squared
    expected = 2613049924
    assert_equal expected, actual
  end

  def test_it_takes_last_four_digits_of_square
    shift    = Shift.new
    actual   = shift.last_four_digits
    expected = "9924"
    assert_equal expected, actual
  end

  def test_it_has_offset_a
    shift = Shift.new
    assert_equal 9, shift.offset_a
  end

  def test_it_has_offsets_b_c_d
    shift = Shift.new
    assert_equal 9, shift.offset_b
    assert_equal 2, shift.offset_c
    assert_equal 4, shift.offset_d
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
