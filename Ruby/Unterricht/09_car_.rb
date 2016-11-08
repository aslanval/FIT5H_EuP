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
<<<<<<< HEAD
#2. Legen Sie 3 Objekte von dieser Klasse an.
#3. Speichern Sie die Objekte in einem Array.
#4. Lassen Sie das Array durchlaufen, geben Sie den Typ aus.
#5. Erstellen Sie eine Ausgabe: sortiert nach PS

class car
	attr_accessor :ps, :typ, :verbrauch
end
=======
#3. Erstellen Sie einen Kontruktor, der fuer die Eigenschaft typ optional eine Initialisierung ermöglicht
#4. Legen Sie 3 Objekte von dieser Klasse an: 
	#car1->ps: 200 typ: "Klaumich"
	#car2->ps: 100 typ: "Hauni"
	#car3->ps: 80  typ: 
#5. Speichern Sie die Objekte in einem Array.
#6. Legen Sie drei weitere Ojekte von der Klasse Car an. Die Daten stehen in einem Hash,
	#wobei die erste Position den Typ und die zweite Position die PS enthält:
	# vals = { 'BMW' => 200, 'Trabbi' => 150, 'Honda' => 20}
	#Lassen Sie den Hash durchlaufen, erzeugen jeweils ein Car-Objekt und legen
	#dieses im Array cars2 ab.
#7. Erstellen Sie eine Klasse 'Driver' mit der Eigenschaft 'name', die im Kontruktor gesetzt werden muss.
	#Es gibt ein Array cars, dass im Konstruktor initialisiert wird. Es gibt eine MEthode add_cars,
	#mit der für das Driver Objekt ein Fahrzeug hinzugefügt werden kann. Es gibt eine Ausgabe show_cars
	#die die Fahrzeuge mit der Typbezeichnung auflistet. Legen Sie Objekt Theo an, ordnen Sie
	#von Car-Arrays jeweils das erste Driver-Objekt zu. Lassen Sie die Daten zugeordneten Fahrzeuge ausgeben.

class Car
	attr_accessor :verbrauch
	attr_reader :typ, :ps

	def initialize(ps, typ="Unbekannt")
		@ps = ps
		@typ = typ.capitalize
	end

	def typ=(typ)
		if !typ.is_a?(String)
			puts "Typ ist kein String"
		elsif typ.size < 3
			puts "Typ muss mind 3 Zeichen lang sein."
		else
			@typ = typ.capitalize
		end
	end

	def ps=(ps)
		if ps > 0
			@ps = ps
		else
			puts "Es müssen mehr als 0 PS sein!"
		end
	end

	def beschleunigen(zeit)
		geschwindigkeit = @ps * zeit
		@geschwindigkeit = geschwindigkeit * 0.36
		puts "#{@typ} fährt mit #{@ps} und einer Speed von #{@geschwindigkeit}km/h"
	end
end

class Driver
	attr_accessor :name
	def initialize(name)
		@name = name
		@cars = []
	end

	def add_cars(kfz)
		@cars << kfz
	end

	def show_cars
		@cars.each do |alle|
		puts "Er fährt ein #{alle.typ} mit #{alle.ps}PS."
		end
	end
end

car1 = Car.new(200, "mercedes")
car2 = Car.new(100, "audi")
car3 = Car.new(80)
cars = [car1, car2, car3]

cars.each do |jau|
	jau.beschleunigen(5)
end

vals = { 'BMW' => 190, 'Trabbi' => 150, 'Honda' => 20 }
cars2 = []

vals.each do |key, val|
	cars2 << Car.new(val, key)
end 

cars2.each do |jau|
	jau.beschleunigen(4)
end

theo = Driver.new("Theo")
theo.add_cars(cars[0])
theo.add_cars(cars2[0])
theo.show_cars
>>>>>>> 81df2ba2fa2a5a100bde46fc86d8c73c938fe433
