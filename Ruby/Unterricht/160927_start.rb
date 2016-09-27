class Movie
	def initialize(pname, pname2, prank=5)
		@name = pname
		@name2 = pname2
		@rank = prank
	end

	def list_movie
		"Movie heisst: #{@name} mit dem Rankin: #{@rank}"
	end

	def list_movie2
		"anderer Movie heisst: #{@name2} mit dem Rankin: #{@rank}"
	end	

	def thumbs_up(value)
		@rank = @rank + value	
	end
end

obj = Movie.new("Superman", nil)
puts obj.list_movie

obj2 = Movie.new(nil, "Batman")
puts obj2.list_movie2
obj2.thumbs_up(7)
puts obj2.list_movie2

obj3 = Movie.new("Spiderman", nil, 3)
puts obj3.list_movie