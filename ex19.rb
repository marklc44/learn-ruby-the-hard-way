# define the function, parameters and execution
def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for the party!"
	puts "Get a blanket."
	puts # a blank line
end

# pass numbers as arguments
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# save the numbers to variables, then pass them
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# pass arithmetic expressions as arguments
puts "We can even do math inside, too:"
cheese_and_crackers(10 + 20, 5 + 6)

# pass variables as part of expressions as arguments
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

# My sample functions

def read_file(filename)
	file = File.open(filename)
	puts file.read()
end

read_file("sample.txt")

def copy_file(file_from, file_to)
	input = File.open(file_from)
	indata = input.read()
	output = File.open(file_to, "w")
	output.write(indata)
	puts "File copied"
	input.close()
	output.close()
end

copy_file("from_file.txt", "to_file.txt")