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

class car
	attr_accessor :ps, :typ, :verbrauch
end