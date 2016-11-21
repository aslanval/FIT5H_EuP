class Autor
	attr_reader :name, :geburtstag
	def initialize(name, geburtstag)
		@name = name
		@geburtstag = geburtstag
	end
end

class Bibliothek
	attr_reader :name
	attr_accessor :buecher
	def initialize(name)
		@name = name
		@buecher = []
		@kunden = []
	end

	def add_book(buch)
		@buecher << buch
	end

	def to_s
		puts "Folgende Buecher sind hier im Bestand:"
		@buecher.each do |jedes|
			puts "#{jedes.autor[0].name}, #{jedes.titel}, #{jedes.gekauft_am}"
		end
		puts "\n"
	end

	def add_kunde(kunde)
		@kunden << kunde
	end

	def kundenliste
		puts "Folgende Kunden sind hier registriert:"
		@kunden.each do |kunde|
			puts kunde.name
		end	
		puts "\n"
	end

	def buch_aktion(jahreszahl)
		zwei = jahreszahl - 2
		fuenf = jahreszahl - 5

		@buecher.each do |immer|
			if immer.gekauft_am < fuenf
				puts "Buch das in die Restaurierung geht:\n #{immer.autor[0].name}, #{immer.titel}, #{immer.gekauft_am}" 
			elsif immer.gekauft_am < zwei
				puts "Buch bei denen eine Kontrolle nötig ist:\n #{immer.autor[0].name}, #{immer.titel}, #{immer.gekauft_am}"
			else 
				puts "Buch bei denen keine Aktion nötig ist:\n #{immer.autor[0].name}, #{immer.titel}, #{immer.gekauft_am}"
			end
		end
		puts "\n"
	end
end

class Buch
	attr_accessor :autor, :titel, :gekauft_am
	def initialize(autor, titel, gekauft_am)
		@autor = []
		@autor << autor
		@gekauft_am = gekauft_am
		@titel = titel
	end
end	

class Kunde
	attr_accessor :name
	def initialize(name)
		@name = name
		@buecher_geliehen = []
	end

	def add_buecher(buch)
		@buecher_geliehen << buch
	end

	def del_buecher(buch_nr)
		puts "Der Kunde #{@name} hat folgendes Buch zurück gebracht: \n#{@buecher_geliehen[buch_nr].titel}"
		puts "\n"
		@buecher_geliehen.delete_at(buch_nr)
	end

	def verliehen
		puts "Der Kunde #{@name} hat #{@buecher_geliehen.size} Buch/Buecher geliehen:"
		@buecher_geliehen.each do |jedes|
			puts "#{jedes.titel}\n"
		end
		puts "\n"
	end
end


bibliothek = Bibliothek.new("Hamburg")

autor_1 = Autor.new("Maier", "20.03.1980")

buch_1 = Buch.new(autor_1, "Niemand", 2005)
buch_2 = Buch.new(autor_1, "Jeder", 2010)
buch_3 = Buch.new(autor_1, "Immer wieder gerne", 2013)
buch_4 = Buch.new(autor_1, "Morgen ist auch noch ein Tag", 2011)

kunde_1 = Kunde.new("Theo")
kunde_2 = Kunde.new("Lea")
kunde_3 = Kunde.new("Jonas")

#Buecherliste
bibliothek.add_book(buch_1)
bibliothek.add_book(buch_2)
bibliothek.add_book(buch_3)
bibliothek.add_book(buch_4)

#kundenliste
bibliothek.add_kunde(kunde_1)
bibliothek.add_kunde(kunde_2)
bibliothek.add_kunde(kunde_3)

bibliothek.to_s
bibliothek.buch_aktion(2014)

#Kundenliste ausgeben
bibliothek.kundenliste

#Kunden buecher verleiehen
kunde_1.add_buecher(buch_1)
kunde_1.add_buecher(buch_4)
kunde_2.add_buecher(buch_2)
kunde_3.add_buecher(buch_3)

#Verliehene buecher anzeigen
kunde_1.verliehen
kunde_2.verliehen
kunde_3.verliehen

#Kunde_1 bringt Buch zurück
kunde_1.del_buecher(0)

#kunde_1 Verliehene Buecher anzeigen
kunde_1.verliehen