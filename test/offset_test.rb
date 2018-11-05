require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  def test_it_reformats_date_to_DDMMYY_if_date_given
    offset   = Offset.new("041818")
    actual   = offset.date
    expected = "041818"
    assert_equal expected, actual
  end

  def test_it_reformats_date_to_DDMMYY_if_no_date_given
    offset   = Offset.new
    actual   = offset.date
    expected = "051118"
    assert_equal expected, actual
  end

  def test_it_can_square_the_date
    offset   = Offset.new
    actual   = offset.date_squared
    expected = 2613049924
    assert_equal expected, actual
  end

  def test_it_takes_last_four_digits_of_square
    offset   = Offset.new
    actual   = offset.last_four_digits
    expected = "9924"
    assert_equal expected, actual
  end

  def test_it_has_offset_a
    offset   = Offset.new
    assert_equal 9, offset.offset_a
  end

  def test_it_has_offsets_b_c_d
    offset   = Offset.new
    assert_equal 9, offset.offset_b
    assert_equal 2, offset.offset_c
    assert_equal 4, offset.offset_d
  end


end
