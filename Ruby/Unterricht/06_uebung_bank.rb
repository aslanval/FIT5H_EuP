class Customer							#Klasse
	def initialize(bank_account, lastname)		#Konstruktor
		@bank_account = bank_account	#Instanzvariable
		@lastname = lastname			#Instanzvariable
	end

	def firstname		#getter(hier eigtl nicht zu gebrauchen)
		@firstname
	end

	def lastname		#getter(hier eigtl nicht zu gebrauchen)
		@lastname
	end

	def street			#getter(hier eigtl nicht zu gebrauchen)
		@street
	end

	def city			#getter(hier eigtl nicht zu gebrauchen)
		@city
	end

	def firstname=(firstname)		#setter (Eigenschaft wird erstellt für ein Objekt der Klasse Customer)
		@firstname = firstname
	end

	def lastname=(lastname)			#setter	(Eigenschaft wird erstellt für ein Objekt der Klasse Customer)
		@lastname = lastname
	end

	def street=(street)				#setter	(Eigenschaft wird erstellt für ein Objekt der Klasse Customer)
		@street = street
	end

	def city=(city)					#setter	(Eigenschaft wird erstellt für ein Objekt der Klasse Customer)
		@city = city
	end

	def print_address
		"Konto:".ljust(15,".") + "#{@bank_account.to_s}" + "\n" +
		"Name:".ljust(15,".") + @firstname.to_s + " " + @lastname.to_s + "\n" +
		"Straße:".ljust(15,".") + @street.to_s + "\n" +
		"Stadt:".ljust(15,".") + @city.to_s + "\n"
	end

end

obj = Customer.new(9999, "Lodgz")	#Ein Objekt "obj" wird erstellt, der Klasse Customer und Instanzvariablen werden gesetzt
obj.firstname = "Theo" 				#Eigenschaft firstname wird verwendet und gesetzt
obj.street = "Hermelinweg 7" 		#Eigenschaft street wird verwendet und gesetzt
obj.city = "22961 Hamburg" 			#Eigenschaft city wird verwendet und gesetzt
puts obj.print_address				#Mit Werten des Objekts "obj" wird die Methode print_adress ausgeführt