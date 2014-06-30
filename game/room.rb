require_relative "utilities"

class Room

	include Utilities

	def initialize(name, intro_text)
		@name = name
		@intro_text = intro_text
	end
	
end