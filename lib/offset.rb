require 'date'

class Offset

  attr_reader :date

  def initialize(date = Date.today.strftime('%d%m%y'))
    @date = date
  end

  def date_squared
    @date.to_i ** 2
  end

  def date_squared_to_s
    date_squared.to_s
  end

  def last_four_digits
    total_string = date_squared_to_s[-4] + date_squared_to_s[-3] + date_squared_to_s[-2] + date_squared_to_s[-1]
    total_string
  end

end

# A offset: The first digit (1)
# B offset: The second digit (0)
# C offset: The third digit (2)
# D offset: The fourth digit (5)
