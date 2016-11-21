class Autor
	attr_reader :name
	attr_reader :geburtstag
	
	def initialize(name, geburtstag)
		@name = name
		@geburtstag = geburtstag
	end
end

class Bibliothek
	attr_reader :buecher

	def initialize(name)
		@name = name
		@buecher = []
	end

	def buecher=(buch_manuell)
		@buecher << buch_manuell
	end

	def add_buch(buch)
		@buecher << buch
	end

	def to_s
		@buecher
	end
end

class Buch
	attr_reader :autor
	attr_reader :titel
	attr_accessor :gekauft_am

	def initialize(autor, titel, gekauft)
		@autor = autor
		@titel = titel
		@gekauft_am = gekauft
	end

	def autor=(autor)
		@autor << autor
	end
end

bibliothek = Bibliothek.new("Hamburg")

autor_1 = Autor.new("Maier", "20.03.1980")

buch_1 = Buch.new(autor_1, "Niemand", 2005)
buch_2 = Buch.new(autor_1, "Jeder", 2010)
buch_3 = Buch.new(autor_1, "Immer wieder gerne", 2013)
buch_4 = Buch.new(autor_1, "Morgen ist auch noch ein Tag", 2011)

bibliothek.add_buch(buch_1)
bibliothek.add_buch(buch_2)
bibliothek.add_buch(buch_3)
bibliothek.add_buch(buch_4)

puts bibliothek