class Fahrzeug
	attr_accessor :raeder, :farbe, :fahrer
	def initialize(typ, name="")
		@typ = typ
		@name = name
	end

	def fahren
		"Das Fahrzeug mit dem Typ #{@typ} ist ein #{@name} und faehrt mit #{@raeder} Reifen"
	end

	def add_fahrer(fahrer)
		@fahrer = fahrer
	end
end

class Fahrer
	attr_accessor :alter
	def initialize(name, geschlecht)
		@name = name
		@geschlecht = geschlecht
	end

	def to_s
		"#{@name}, #{@geschlecht}, #{@alter}"
	end
end 

class Spiel
	def initialize(name)
		@name = name
		@fahrzeuge = []
	end

	def add_fahrzeug(fahrzeug)
		@fahrzeuge << fahrzeug
	end

	def play
		str = "Das Spiel #{@name} läuft mit #{@fahrzeuge.count} Fahrzeugen. \n"
		@fahrzeuge.each do |lol|
			str = str + "Und zwar mit: #{lol.fahren} und dem Fahrer: #{lol.fahrer}!\n"
		end
		str
	end
end


fzg1 = Fahrzeug.new("Auto","BMW")
fzg1.raeder = 4 
fzg1.farbe = "rot"

fahrer1 = Fahrer.new("Bernd", "maennlich")
fahrer1.alter = 33
fzg1.add_fahrer(fahrer1)

fzg2 = Fahrzeug.new("Fahrrad","Pegasus")
fzg2.raeder = 2
fzg2.farbe = "blau"

fahrer2 = Fahrer.new("Lisa", "weiblich")
fahrer2.alter = 27
fzg2.add_fahrer(fahrer2)

sp1 = Spiel.new("GTA")
sp1.add_fahrzeug(fzg1)
sp1.add_fahrzeug(fzg2)
puts sp1.play