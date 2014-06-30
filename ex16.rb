# get filename from command line argument
filename = ARGV.first
# cache this script's filename
script = $0

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."
# How does this begin the truncating process?
# What happens to the STDIN.gets input?
# Does it just wait for any kind of confirmation
print "? "
STDIN.gets

# save open file with param 'w' (write) to target
puts "Opening the file..."
target = File.open(filename, 'w')

# truncate the target file, target.size says truncate entire file
puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

# get the three lines of text with STDIN.gets.chomp
print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

# write those three lines to the the target file with line breaks between
target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

# close the file
puts "And finally, we close it."
target.close()