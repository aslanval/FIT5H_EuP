class Kunde
	attr_accessor :name, :gehalt
	attr_writer :adresse

	def initialize(name)
		@name = name
	end

#	def name=(name)
#		@name = name.split(/ /).map(&:capitalize).join(" ")
#	end

	def adresse
		@adresse
		"#{@name}, #{@adresse}."
	end
end

class Kredit
	attr_accessor :kredit
	def initialize(kunde)
		@kunde = kunde
	end

	def kunde
		@kunde
<<<<<<< HEAD
		"#{@kunde.adresse} Jahresgehalt: #{@kunde.gehalt * 12}"
=======
		"#{@kunde.adresse} Jahresgehalt: #{@kunde.gehalt * 12}."
>>>>>>> 81df2ba2fa2a5a100bde46fc86d8c73c938fe433
	end
end

kunde1 = Kunde.new("Theo Sommer")	#c
kunde1.name = "theo sonnenschein".split(/ /).map(&:capitalize).join(" ")	#d
#kunde1.name = kunde1.name.split(/ /).map(&:capitalize).join(" ")
puts kunde1.name					#e

kunde1.gehalt = 2000				#f
kunde1.adresse = "Hermelinweg 11, 22159 Hamburg"
puts kunde1.adresse

kredit1 = Kredit.new(kunde1)
puts kredit1.kunde
<<<<<<< HEAD
kredit1.kredit = 5000
=======
kredit1.kredit = 5000

>>>>>>> 81df2ba2fa2a5a100bde46fc86d8c73c938fe433
