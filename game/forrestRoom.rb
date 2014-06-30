require_relative "room"

class ForrestRoom < Room

	def play
		puts @name
		puts @intro_text
		puts "'s' for sneak, 'a' for attack or 'j' for tell a joke"
		choice = Utilities::prompt

		if choice == 's'
			puts "Doh! You can't sneak past a Wood Elf in the forest!"
			puts "He's skewered you with a long knife!"
			Utilities::death

		elsif choice == 'a'
			puts "You were able to fight your way past the Wood Elf"
			puts "But you couldn't wrestle away the Bow of Shadows."
			puts "Hope you don't need it."
			return Utilities::set_next_room("fireRoom")

		elsif choice == 'j'
			puts "Huzzah! You win! Wood elves don't hear many jokes, so he"
			puts "gives you the Bow of Shadows for making his century."
			Utilities::add_weapon("bow")
			return Utilities::set_next_room("fireRoom")
		end
	end
end