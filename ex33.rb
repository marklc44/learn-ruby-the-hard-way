i = 0
limit = 10
increment = 2

def goto_limit(limit, i, increment)
	numbers = []
	while i < limit
		puts "At the top i is #{i}"
		numbers.push(i)

		i = i + increment
		puts "Numbers now: #{numbers}"
		puts "At the bottom i is #{i}"
	end

	puts "The numbers: "

	for num in numbers
		puts num
	end
end

# goto_limit(limit, i, increment)

def for_to_limit(limit, i)
	numbers = []
	for i in i..limit
	puts "At the top i is #{i}"
		numbers.push(i)

		puts "Numbers now: #{numbers}"
		puts "At the bottom i is #{i}"
	end

	puts "The numbers: "

	for num in numbers
		puts num
	end
end

for_to_limit(limit, i)