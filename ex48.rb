# Lexicon building

user_input = gets.chomp
# split to array
words = user_input.split()
puts "-" * 10

# create struct
Pair = Struct.new(:token, :word)

# use create____ functions to create one type at a time
# pass the value
d1 = Pair.new("direction", "north")
d2 = Pair.new("direction", "south")
d3 = Pair.new("direction", "east")
d4 = Pair.new("direction", "west")
d5 = Pair.new("direction", "down")
d6 = Pair.new("direction", "up")
d7 = Pair.new("direction", "left")
d8 = Pair.new("direction", "right")
d9 = Pair.new("direction", "left")

lex = [d1,d2,d3,d4,d5,d6,d7,d8,d9]

puts "-" * 10


# loop through words
# check each word against each lexicon item
# if it matches, puts out the word
# this is not exactly what needs to happen, but a start
words.each do |word|
	lex.each do |l|
		if word == l
			puts l::word

		end
	end
end


