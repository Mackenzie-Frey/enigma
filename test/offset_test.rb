require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  def test_it_reformats_date_to_DDMMYY
    offset = Offset.new
    actual = offset.date.reformat_date
    expected = "051118"
    assert_equal expected, actual
  end

# date = Date.today.strftime('%d%m%y')
end
