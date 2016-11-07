#1.	
numbers = { '0': 15, '1': 16, '2': 17, '3': 18, '4': 19, '5': 20}

#a)
puts numbers
puts numbers.class

#b)
	numbers.each do |index, nummer|
		puts "Index: #{index} - Wert: #{nummer}"
	end

#c)
block = Hash[a3.map {|key, value| [key, value]}]
	numbers.each do |index, nummer|
		block << { "#{nummer}": Random.new.rand(100..200)}
	end
	block.each do |index, nummer|
		puts "Index: #{index} - Wert: #{nummer}"
	end
	puts block.class