class Player
	def initialize(name, health=100)
		@name = name		
		@health = health
	end


	def to_s #say_hello		Wenn 'to_s' , dann unten das .say_hello nicht nötig...
		"Ich bin #{@name} mit einem Leben von #{@health}."
	end

	def blamed #Instabnz-Variable
		"#{@name} got blamed with #{@health}."
	end

	def w00ted
		"#{@name} got w00ted with #{@health}."
	end


	def blam(value)
		@health = @health + value	#entweder mit variable, wie hier 'value'
	end

	def w00t
		@health = @health - 20		#oder direkt den Wert, wie hier 20	#Eigenschaft einer Instanzvariable
	end
end


player1 = Player.new("Herbert", 95)
puts player1 #.say_hello

player1.blam(7)
puts player1.blamed


player2	 = Player.new("Manfred")
puts player2 #.say_hello

player2.w00t
puts player2.w00ted