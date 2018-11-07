require './lib/enigma'
require './lib/decoder'

encrypted_file   = File.open(ARGV[0],"r")
encrypted_string = encrypted_file.read

enigma = Enigma.new

decrypted_hash = enigma.decrypt(encrypted_string, ARGV[2], ARGV[3])

decrypted_message = decrypted_hash[:decryption]

decrypted_file_name = ARGV[1]
decrypted_file = File.open(decrypted_file_name, "w")
decrypted_file.write(decrypted_message)
decrypted_file.close

puts "Created #{decrypted_file_name} with the key #{decrypted_hash[:key]} date #{decrypted_hash[:date]} "
