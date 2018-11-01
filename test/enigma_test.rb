



# pry(main)> require 'date'
# => true
#
# pry(main)> require './lib/enigma'
# => true
#
# pry(main)> e = Enigma.new
# => #<Enigma:0x00007ff90f24cb78...>
#
# pry(main)> my_message = "this is so secret ..end.."
# => "this is so secret ..end.."
#
# pry(main)> output = e.encrypt(my_message, "12345", Date.today)
# => # encrypted message here
#
# pry(main)> output = e.encrypt(my_message) #key and date are optional (generate random key and use today's date)
# => # encrypted message here
