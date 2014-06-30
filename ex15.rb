# sets filename variable to the first argument from the command line
filename = ARGV.first
# sets up prompt char
prompt = "> "
# sets txt var to execute file.open on the filename given in the command line
txt = File.open(filename)
# intro text
puts "Here's your file: #{filename}"
# put the contents of the file to the screen
puts txt.read()
# prompt to enter the filename again
puts "I'll also ask you to type it again:"
print prompt
# gets the filename from the prompt input
file_again = STDIN.gets.chomp()
# sets txt_again to execute file.open on the new filename entered at the prompt
txt_again = File.open(file_again)
# put the contents of the new filename to the screen
puts txt_again.read()

txt.close()

txt_again.close()
