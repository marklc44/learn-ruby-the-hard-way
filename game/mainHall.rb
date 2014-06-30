require_relative "room"

class MainHall < Room

	def play
		puts @name
		puts @intro_text
		choice = Utilities::prompt
		
		if choice == 'r'
			return Utilities::set_next_room("mineRoom")
		elsif choice == 'l'
			return Utilities::set_next_room("forrestRoom")
		end
	end

end