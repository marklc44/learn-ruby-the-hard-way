require_relative "room"

class CavernRoom < Room

	def play
		puts @name
		puts @intro_text
		puts "Which weapon will you use: [" + Utilities::list_weapons + "]"
		w = Utilities::prompt

		if w.length == 0
			return no_weapons = true
		end

		if !Utilities::check_weapons(w)
			puts "You don't have that weapon. Choose one you have."
			choice = Utilities.prompt
		elsif (w == "hammer" || "sword") && no_weapons == true
			puts "You win! The Ogre succombed to your magic weapon!"
			puts "The Ogre was guarding 2 doors."
			puts "Do you choose the door on the right (r) or the door on the left (l)?"
			choice = Utilities::prompt

			if choice == "r"
				puts "Nooo! That door goes to the Pits of Slow Death!"
				puts "You will be roasted to death by the World's Worst Comics for millenia!"
				Utilities::death
			elsif choice == "l"
				puts "Woohoo! You've entered the Valley of Eternal Life! You live forever in Paradise."
				Process.exit(0)
			end
		else
			puts "That won't hurt an Ogre! You're bones are ground to dust!"
			Utilities::death
		end
	end
	
end

