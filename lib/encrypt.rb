require './lib/enigma'



message_file   = File.open(ARGV[0],"r")
message_string = message_file.read

enigma = Enigma.new

something = enigma.encrypt(message_string)

require 'pry';binding.pry

#write enigma tests
# save to hash
# make file
# print out
