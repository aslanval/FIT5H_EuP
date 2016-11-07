class Customer
	attr_accessor :firstname, :street, :city
	def initialize(bank_account, lastname="")
		@bank_account = bank_account
		@lastname = lastname
	end

	def print_address
		puts "Konto:".ljust(15,".")+"#{@bank_account}\n"+"Name:".ljust(15,".")+"#{@firstname}, #{@lastname}\n"+"Strasse:".ljust(15,".")+"#{@street}\n"+"Ort:".ljust(15,".")+"#{@city}"
	end
end

obj1 = Customer.new(9999, "Lodgz")
obj1.firstname = ("Theo")
obj1.street = ("Hermelinweg 7")
obj1.city = ("22159 Hamburg")
obj1.print_address
