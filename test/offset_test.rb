require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  def test_it_reformats_date_to_DDMMYY_if_date_given
    offset = Offset.new("041818")
    actual = offset.date
    expected = "041818"
    assert_equal expected, actual
  end

  def test_it_reformats_date_to_DDMMYY_if_no_date_given
    offset = Offset.new
    actual = offset.date
    expected = "051118"
    assert_equal expected, actual
  end

end
