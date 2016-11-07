class Player
	attr_accessor :alter
	def initialize(name, points=10)
		@name = name
		@points = points
	end	

	def blam
		puts "#{@name} got blamed with an age of #{@alter} and points of #{@points * 3}"
	end	

	def w00t
		puts "#{@name} got w00ted with an age of #{@alter} and points of #{@points / 1.5}"
	end
end	

class Game
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(objekt)
		@players << objekt
	end

	def play
	puts "There are #{@players.count} players playing #{@title}!"		
	@players.each do |einzelner|
		einzelner.blam
		einzelner.w00t
		end
	end	
end

obj1 = Player.new("Joe", 21)
obj1.alter = 13
obj2 = Player.new("Humer", 12)
obj2.alter = 29

game1 = Game.new("GTA IV")
game1.add_player(obj1)
game1.add_player(obj2)
game1.play