require './lib/enigma'



message_file   = File.open(ARGV[0],"r")
message_string = message_file.read

enigma = Enigma.new

encrypted_hash = enigma.encrypt(message_string)

require 'pry';binding.pry
