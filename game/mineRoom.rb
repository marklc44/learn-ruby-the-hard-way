require_relative "room"

class MineRoom < Room

	def play
		puts "Mine Room"
		puts "'s' for sneak, 'a' for attack or 'j' for tell a joke"
		choice = Utilities::prompt

		if choice == 's'
			puts "You were able to sneak past the Goblin, but weren't able to grab the dagger."
			return Utilities::set_next_room("swampRoom")
			
		elsif choice == 'a'
			puts "Well done! You gutted the cad, and grabbed the dagger!"
			puts "You may pass to the next room."
			Utilities::add_weapon("dagger")
			return Utilities::set_next_room("swampRoom")

		elsif choice == 'j'
			puts "Goblins definitely don't like jokes."
			puts "He's chewed off your ears, hands and feet. Good luck!"
			Utilities::death
		end
	end
end