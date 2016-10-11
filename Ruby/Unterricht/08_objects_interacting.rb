class Game
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(player, health)
		@players << player
		@health << health
	end

	def blam
		"#{@players} got blammed!"
	end

	def play
		puts "There are #{@players.size} players in #{@title}:"
		@players.each do |Methoden|
			Methoden.blam
			puts Methoden
	end	
end