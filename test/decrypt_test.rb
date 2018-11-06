require './test/test_helper'

class DecryptTest < Minitest::Test

  def test_it_exists
    decrypt = Decrypt.new(message)
    assert_instance_of Decrypt, decrypt
  end
end
