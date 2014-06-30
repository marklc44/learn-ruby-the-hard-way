# my game

def prompt
	print "> "
end

$goodies = []

def start
	puts "You are in a dark room with two doors."
	puts "Type 'L' to take the left door or 'R' to take the right door."
	prompt; next_move = gets.chomp

	if next_move.downcase == 'r'
		fairy_room()
	elsif next_move.downcase == 'l'
		goblin_room()
	else
		puts "I didn't recognize your choice."
		start()	
	end
end

def goblin_room
	puts "You've entered a room with a goblin and an enchanted axe. There are two doors."
	puts "The goblin is blocking your path to the two doors. What do you do?"
	puts "Type 's' to try to scare the goblin with a yell, 'B' to try to bribe him with beef jerky or 'F' to ask to pass nicely."
	prompt; next_move = gets.chomp

	if next_move.downcase == 's'
		puts "The goblin is a wuss, and he ran away. Take the axe and choose a door - 'L' for left or 'R' for right."
		$goodies.push("axe")

		prompt; next_move = gets.chomp

		if next_move.downcase == "l"
			gold_room()
		elsif next_move.downcase == "r"
			ogre_room()
		else
			puts "Dammit. We have to start this room all over again."
			goblin_room()
		end

	elsif next_move.downcase == 'b'
		die("He doesn't like jerky, but he does like your leg!") 
	elsif next_move.downcase == 'f'
		die("Goblins don't have many friends, but he'll eat your head.")
	else
		puts "I didn't recognize your choice."
		goblin_room()
	end
end

def fairy_room
	puts "You've entered a room with a fairy princess."
	puts "She gives you some fairy dust to help you on your quest."
	$goodies.push("fairy dust")

	puts "There are two doors. Type 'L' to take the door on the left, 'R' to take the door on the right or 'S' to stay with the princess."
	prompt; next_move = gets.chomp

	if next_move.downcase == "r"
		dragon_room()
	elsif next_move.downcase == "l"
		ogre_room()
	elsif next_move.downcase == "s"
		die("The princess seems nice at first but soon eats your internal organs.")
	else
		puts "I didn't recognize your choice."
		fairy_room()
	end
end

def ogre_room
	puts "You've entered a very stinky room with an even stinkier and uglier ogre."
	if $goodies.include?("axe")
		puts "Your enchanted axe took the oger's head clean off!"
		# door choice logic
		puts "The ogre was guarding two doors. You know the drill. Type 'L' for left or 'R' for right."
		prompt; next_move = gets.chomp

		if next_move.downcase == "l"
			gold_room()
		elsif next_move.downcase == "r"
			dragon_room()
		else
			die("Sorry, that wasn't an option. You die!")
		end
	else
		puts "No fairy dust will help you in here!"
		die("The ogre boiled your bones for a stew. Sorry.")
	end
end

def dragon_room
	puts "Oh shit. There's a big ass dragon sitting on a pile of gold. Your little axe won't help you."
	die("The dragon burnt you to a crisp.")
end

def gold_room
	puts "You enter a room full of gold!"
	puts "There's no dragon, no goblin, no ogre. Stuff your pockets. You win!"
	Process.exit(0)
end

def die(way)
	puts "#{way} Good job!"
	Process.exit(0)
end

def play_again
	puts "Do you want to play again. Type 'Y' for yes or 'N' for no."
	prompt; next_move = gets.chomp

	if next_move.downcase == 'y'
		start()
	else
		puts "Thanks for playing!"
		Process.exit(0)
end

start()





