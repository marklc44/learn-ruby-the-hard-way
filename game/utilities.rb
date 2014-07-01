module Utilities

	@weapons = []

	def self.prompt
		print "> "
		action = gets.chomp.downcase
		return action
	end

	def self.death
		quips = [
			"You died. You kinda suck at this.",
			"Nice job, you died ...jackass.",
			"Such a loser.",
			"I have a small puppy that's better at this."
		]
		puts quips[rand(quips.length())]
		Process.exit(1)
	end

	def self.set_next_room(room)
		@next_room = room
		return @next_room
	end

	def self.get_next_room
		return @next_room
	end

	def self.add_weapon(weapon)
		@weapons.push(weapon)
	end

	def self.list_weapons
		return @weapons.join(", ")
	end

	def self.check_weapons(w)
		
		@weapons.each do |weapon|
			if weapon == w
				return true
			end		
		end
	end

	# intro text for all rooms
	# don't know why it's here...just a place to put it
	# similar to quips

	def self.get_intro_text(room)

		case room
		when 'mainHall'
			return @mainHall_intro_text = <<-TEXT
			You are in a large hall with two doors, one on the left, one on the right.
			Type 'r' to choose the right door or 'l' to choose the left door.
			TEXT
		when "forrestRoom"
			return @forrest_intro_text = <<-TEXT
You are in the forrest room.
TEXT

		when "fireRoom"
			return @fire_intro = <<-TEXT
You are in the Fire Room.
TEXT

		when "swampRoom"
			return @fire_intro = <<-TEXT
You are in the Swamp Room.
TEXT
		when "mineRoom"
			return @mine_intro = <<-TEXT
You are in the Mine Room.
TEXT

		when "cavernRoom"
			return @cavern_intro = <<-TEXT
The Ogre is looking right at you and has no sense of humor.
Your only choice is to attack.
TEXT
		else 
			return @intro = <<-TEXT
You are in the Main Hall.
TEXT
		end

	end
	
end






