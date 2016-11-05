#1. Erstellen Sie eine Klasse Car mit den Eigenschaften:
	#ps, typ, verbrauch
	#Stellen Sie sicher, dass die Eigenschaft typ beim Ersten Buchstaben einen Großbuchstaben erstellt.
	#Stellen Sie sicher, dass bei der eingabe überprüft wird, ob es sich um einen String handelt, 
	#der mindestens 3 Ziffern lang ist.
	#Stellen Sie sicher, dass die Instanzvariable ps nur dann gefüllt wird,
	#wenn es sich um einen positiven Wert größer als Null handelt.
#2. Das Fahrzeug kann beschleunigen. Die Methode beschleunigen bekommt einen Parameter Zeit,
	#der die Sekundenzahl des Beschleuningungsvorgangs enthält. Ausgegeben wird die erreichte
	#Geschwindigkeit in km/Stunden. Die Geschwindigkeit wird errechnet aus PS mal Sekunden/100.
#2. Legen Sie 3 Objekte von dieser Klasse an.
#3. Speichern Sie die Objekte in einem Array.
#4. Lassen Sie das Array durchlaufen, geben Sie den Typ aus.
#5. Erstellen Sie eine Ausgabe: sortiert nach PS

class Car
	attr_accessor :verbrauch, :zeit
	attr_reader :typ, :ps

	def typ=(typ)
		if !typ.is_a?(String)
			puts "War kein String"
		elsif typ.size < 3
			puts "String zu kurz"
		else
			@typ = typ.capitalize
		end
	end

	def ps=(ps)
		@ps = ps if ps > 0
	end	

	def beschleunigen(zeit)
		geschwindigkeit = @ps * zeit / 100
		puts "Die Geschwindigkeit beträgt nun: #{convert_to_kmh(geschwindigkeit)}km/h."
	end	

	private
		def convert_to_kmh(var)
			@var = var * 3.6
		end	
end


obj = Car.new
obj.typ = "dddd"
puts obj.typ
obj.ps = 50
obj.beschleunigen(10)
