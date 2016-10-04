class Game
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(player, health)
		@players << player
		@health << health
	end

	def play
		"There are "
	end	
end