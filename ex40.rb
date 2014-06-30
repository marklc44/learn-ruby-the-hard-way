class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
	end

	def return_first_line()
		puts @lyrics[0]
	end
end

happy_bday = Song.new([
		"Happy birthday to you",
		"I don't want to get sued",
		"So I'll stop right there"
	])

bulls_on_parade = Song.new([
		"They rally around the family",
		"With a pocket full of shells"
	])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song

puts '-' * 10

happy_bday.return_first_line

puts '-' * 10

lyrics = [
	"Mary had a little lamb",
	"little lamb, little lamb",
	"Mary had a little lamb"
]

mary = Song.new(lyrics)

mary.sing_me_a_song
mary.return_first_line