ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there's not 10 things in that list, let's fix that."

# turn the string into an array looking for spaces as item separators
stuff = ten_things.split(" ")
# %w() turns the list of things into an array of strings
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)

# until there are 10 items in stuff, do the block
while stuff.length != 10
	# remove the last item in more_stuff and assign it to next_one
	next_one = more_stuff.pop()
	puts "Adding: #{next_one}"
	# add next_one as the first item in stuff
	stuff.push(next_one)
	puts "There's #{stuff.length} items now."
end

# put the array to the screen
puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

# print item at index 1 in array
puts stuff[1]
# print item at index 1 in array - absolute value
puts stuff[-1]
# remove the last item of the array and return it
puts stuff.pop()
# turn stuff into a string and use a space in between each item
puts stuff.join(' ') #what?
# get items at index 3 and 5 then turn them into a string with # between each item
puts stuff.values_at(3,5).join('#') #super stellar!