require_relative "room"

class SwampRoom < Room

	def play
		puts @name
		puts @intro_text
		puts "'s' for sneak, 'a' for attack or 'j' for tell a joke"
		choice = Utilities::prompt

		if choice == 's'
			puts "Water nymphs are sneakier than you!"
			puts "Dry drowning is a rough way to go."
			Utilities::death
			
		elsif choice == 'a'
			puts "Well done, you big bully. You slaughtered a defenseless nymph."
			puts "To the victor go the spoils: the Cruel Blade is yours."
			Utilities::add_weapon("sword")
			return Utilities::set_next_room("cavernRoom")
			
		elsif choice == 'j'
			puts "Your joke made her chuckle, and she swam away laughing."
			puts "You may pass, but she took the Cruel Blade with her."
			return Utilities::set_next_room("cavernRoom")
		end
	end
end

