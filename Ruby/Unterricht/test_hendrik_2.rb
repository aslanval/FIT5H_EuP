class Game
	attr_reader :players
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(name)
		@players << name
	end	

	def play
		puts "There are #{@players.count} players in #{@title}"
	end

	def blam(name)
		puts "#{name} got blamed!!!"
	end
end	

spieler = ["Moe", "Homer", "Bart", "March"] #Spielerliste

obj1 = Game.new("Knuckleheads") 

spieler.each do |diggi|		#Array "Spieler" werden alle nacheinander in "diggi" geschoben und in add_player ausgeführt
	obj1.add_player(diggi)
end

obj1.play

obj1.players.each do |joo|		#Array "Spieler" werden alle nacheinander in "joo" geschoben
	obj1.blam(joo)
end