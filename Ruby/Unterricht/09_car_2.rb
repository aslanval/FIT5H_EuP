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
	attr_accessor :verbrauch, :zeit
	attr_reader :typ, :ps

	def initialize(ps, typ="")
		@ps = ps
		@typ = typ
	end

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

class Driver
	attr_accessor :name
	def initialize(name)
	@name = name
	@cars = []
	end

	def add_cars(car)
		@cars << car
	end

	def show_cars
		@cars.each do |diggi|
			puts diggi.typ
		end	
	end
end


car1 = Car.new(200, "Klaumich")
car2 = Car.new(100, "Hauni")
car3 = Car.new(80)

cars = [car1, car2, car3]

cars.each do |yalla|
	if !yalla.typ.empty?
		puts yalla.typ
	else puts "Kein Typ vorhanden"
	end	
end

cars2 = []
vals = { 'BMW' => 200, 'Trabbi' => 150, 'Honda' => 20 }
vals.each do |typ, ps|
	cars2 << Car.new(ps, typ)
end

theo = Driver.new('Theo')
theo.add_cars(cars[0])
theo.add_cars(cars2[0])
theo.show_cars