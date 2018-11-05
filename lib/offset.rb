require 'date'

class Offset

  attr_reader :date

  def initialize(date = Date.today.strftime('%d%m%y'))
    @date = date
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
end
