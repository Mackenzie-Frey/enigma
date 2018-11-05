require './test/test_helper'
require './lib/shift'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new
    assert_instance_of Shift, shift
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
