require_relative "mainHall"
require_relative "forrestRoom"
require_relative "mineRoom"
require_relative "swampRoom"
require_relative "fireRoom"
require_relative "cavernRoom"
require_relative "slowDeathRoom"
require_relative "eternalLifeRoom"
require_relative "utilities"

class Game

	def initialize(start)
		@actions = ['sneak', 'attack', 'joke']
		@weapons = [];
		@start = start
	end


	def play
		change_room(@start)

		while true
			puts "-" * 10
			change_room(Utilities::get_next_room)
		end
	end

	def change_room(room)

		case (room)
		when 'mainHall'
			@next_room = MainHall.new('Main Hall', Utilities::get_intro_text(room))
		when 'mineRoom'
			@next_room = MineRoom.new('Mine Room', 'intro text')
		when 'forrestRoom'
			@next_room = ForrestRoom.new('Forrest Room', 'intro text')
		when 'fireRoom'
			@next_room = FireRoom.new('Fire Room', 'intro text')
		when 'swampRoom'
			@next_room = SwampRoom.new('Swamp Room', 'intro text')
		when 'cavernRoom'
			@next_room = CavernRoom.new('Cavern Room', 'intro text')
		else
			@next_room = @start
		end

		@next_room.play
		
	end
end

a_game = Game.new('mainHall')
a_game.play

















