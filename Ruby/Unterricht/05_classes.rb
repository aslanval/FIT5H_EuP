class Player
	def initialize(name, health=100)
		@name = name
		@health = health
	end


	def say_hello
		"Ich bin #{@name} mit einem Leben von #{@health}."
	end

	def blamed
		"#{@name} got blamed with #{@health}."
	end

	def w00ted
		"#{@name} got w00ted with #{@health}."
	end


	def blam(value)
		@health = @health + value
	end

	def w00t(value)
		@health = @health - value
	end

end


player1 = Player.new("Herbert", 95)
puts player1.say_hello

player1.blam(7)
puts player1.blamed


player2	 = Player.new("Manfred")
puts player2.say_hello

player2.w00t(20)
puts player2.w00ted