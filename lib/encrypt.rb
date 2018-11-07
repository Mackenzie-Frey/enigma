
require 'pry';binding.pry



message_file   = File.open(ARGV[0],"r")
message_string = message_file.read

enigma = Enigma.new

enigma.encrypt(message_string)


#write enigma tests
# save to hash
# make file
# print out
