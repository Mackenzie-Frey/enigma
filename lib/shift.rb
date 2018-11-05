require 'securerandom'
require 'date'

class Shift

  attr_reader :key,
              :date

  def initialize(key = SecureRandom.random_number(99999).to_s.rjust(5, "0"), date = Date.today.strftime('%d%m%y'))
    @key = key
    @date = date
  end

  def a_key
    (@key[0] + @key[1]).to_i
  end

  def b_key
    (@key[1] + @key[2]).to_i
  end

  def c_key
    (@key[2] + @key[3]).to_i
  end

  def d_key
    (@key[3] + @key[4]).to_i
  end

  def date_squared
    @date.to_i ** 2
  end

  def square_to_s
    date_squared.to_s
  end

  def last_four_digits
    total_string = square_to_s[-4] + square_to_s[-3] + square_to_s[-2] + square_to_s[-1]
    total_string
  end

  def offset_a
    last_four_digits[0].to_i
  end

  def offset_b
    last_four_digits[1].to_i
  end

  def offset_c
    last_four_digits[2].to_i
  end

  def offset_d
    last_four_digits[3].to_i
  end

  def shift_a
    a_key
  end

  def shift_b
    b_key
  end

  def shift_c
    c_key
  end

  def shift_d
    d_key
  end

  def shift_amounts
    [shift_a, shift_b, shift_c, shift_d]
  end
end
