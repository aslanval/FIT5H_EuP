class Calculator
	def initialize(eins, zwei)
		@eins = eins
		@zwei = zwei
	end

	def add
		@add = @eins + @zwei
		"Das Ergebnis der Addtition lautet #{@add}"
	end

	def sub
		@sub = @eins - @zwei
		"Das Ergebnis der Subtraktion lautet #{@sub}"
	end	
end	

obj1 = Calculator.new(5,2)
puts obj1.add
puts obj1.sub