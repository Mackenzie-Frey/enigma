require 'date'

class Offset

  attr_reader :date

  def initialize(date = Date.today.strftime('%d%m%y'))
    @date = date
  end

end

# require ‘./lib/key_generator.rb’
# A key
# B key
# C key
# D key
# 			Account for: leading zeros
# 			Supply Date.today if no date is given
# Format -> DDMMYY
# Square the numeric form (1672401025)
# Take the last four digits (1025)
# A offset: The first digit (1)
# B offset: The second digit (0)
# C offset: The third digit (2)
# D offset: The fourth digit (5)
