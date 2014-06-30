require_relative "room"

class FireRoom < Room

	def play
		puts @name
		puts @intro_text
		puts "'s' for sneak, 'a' for attack or 'j' for tell a joke"
		choice = Utilities::prompt

		if choice == 's'
			puts "Not so fast, Bucko. You can't outsneak the spawn of hell."
			puts "You're fried by hellfire."
			Utilities::death
			
		elsif choice == 'a'
			puts "Which weapon will you use?"
			puts "You have: [" + Utilities::list_weapons + "]"
			w = Utilities::prompt

			if !Utilities::check_weapons(w)
				puts "You don't have that weapon. Choose one you have."
				choice = Utilities.prompt
			elsif w == "bow"
				puts "You win! You defeated the Demon with the Bow of Shadows!"
				puts "Take the Bone Crushing Hammer and move on."
				Utilities::add_weapon("hammer")
				Utilities::set_next_room("cavernRoom")
			else
				puts "That won't hurt a demon! You're fried"
				Utilities::death
			end

		elsif choice == 'j'
			puts "It's too late for jokes. You're fried by hellfire."
			Utilities::death
		end
	end
end

