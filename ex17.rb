from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
input = File.open(from_file)
indata = input.read()

puts "The input file is #{indata.length} bytes long"

puts "This file doesn't exist" unless File.exists?(to_file)

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all done."

output.close()
input.close()