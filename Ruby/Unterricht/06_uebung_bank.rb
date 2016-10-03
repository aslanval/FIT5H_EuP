class Customer
	def initialize(bank_account, lastname)
		@bank_account = bank_account
		@lastname = lastname
	end

	def prename(prename)
		@prename = prename
	end

	def street(street)
		@street = street
	end

	def city(city)
		@city = city
	end

	def print_address
		"
		Konto:...........#{@bank_account}
		Name:............#{@prename} #{@lastname}
		Straße:..........#{@street}
		Ort:.............#{@city}"
	end
end

customer1 = Customer.new(99999, "Lodgz")
customer1.prename("Theo")
customer1.street("Hermelinweg 7")
customer1.city("22159Hamburg")
puts customer1.print_address