require './lib/enigma'

message_file   = File.open(ARGV[0],"r")
message_string = message_file.read

enigma = Enigma.new

encrypted_hash = enigma.encrypt(message_string)

encrypted_message = encrypted_hash[:encryption]

encrypted_file_name = ARGV[1]
encrypted_file = File.open(encrypted_file_name, "w")
encrypted_file.write(encrypted_message)
encrypted_file.close

puts "Created #{encrypted_file_name} with the key #{encrypted_hash[:key]} date #{encrypted_hash[:date]} "
