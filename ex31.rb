def prompt
	print "> "
end

puts "You enter a dark room with three doors. Do you go through door #1, #2 or #3?"

prompt; door = gets.chomp

if door == "1"
	puts "There's a giant bear here eating a cheesecake. What do you do?"
	puts "1. Take the cake."
	puts "2. Scream at the bear."

	prompt; bear = gets.chomp

	if bear == "1"
		puts "The bear eats your face off. Good job!"
	elsif bear == "2"
		puts "The bear eats your legs off. Good job!"
	else
		puts "Well, doing #{bear} is probably better. Bear runs away."
	end

elsif door == "2"
	puts "You stare into the endless abyss at Cthulu's retina."
	puts "1. Blueberries."
	puts "2. Yellow jacket clothespins."
	puts "3. Understanding revolvers yelling melodies."

	prompt; insanity = gets.chomp

	if insanity == "1" || insanity == "2"
		puts "Your body survives powered by a mind of jello. Good job!"
	else
		puts "The insanity rots your eyes into a pool of muck. Good job!"
	end
elsif door == "3"
	puts "There's a small dog with a pizza. What do you do?"
	puts "1. Pet the dog."
	puts "2. Take the pizza for yourself."

	prompt; dog = gets.chomp

	if dog == "1"
		puts "She growls and snaps viciously. You pee your pants. Good job!"
	elsif dog == "2"
		puts "Don't take the pizza! She bites your hand off and you pee your pants. Good job!"
	else
		puts "Good. Just don't touch the pizza, whatever you do."
	end
else
	puts "You stumble around and fall on a knife and die. Good job!"
end