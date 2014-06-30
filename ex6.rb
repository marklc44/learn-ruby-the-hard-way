# interpolate an integer into a string
x = "There are #{10} types of people."
binary = "binary"
do_not = "don't"
# interpolate two strings into another string
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

# interpolate a string into another string
puts "I said: #{x}."
# interpolate a string into another string with single quotes as part of the string
puts "I also said: '#{y}'."

hilarious = false
# interpolate a boolean value into a string
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# puts a boolean value puts nothing
puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

# concatenate two strings with a '+' symbol
puts w + e
