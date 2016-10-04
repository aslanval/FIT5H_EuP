def

movie1 = Movie.new("Goonies", 10)		#Objekte werden mit Initialize Methode angelegt
movie2 = Movie.new("Batman", 5)
movie3 = Movie.new("Spiderman", 8)
movies = [movie1, movie2, movie3]		#Array wird angelegt mit den Werten von den Objekten movie1, movie2, movie3

movies.each do |digga|					#Für Array movies wird Methode each durchgeführt. Für diese Methode wird in digga jeder Wert von movie1 geschrieben
	digga.thumbs_down					#digga enthaelt jetzt die Werte von movie1 und führt die thumbs_down Methode durch
	puts digga							#digga wird ausgegeben
end										#bei movies.each wird nun der nächste Array, z.B. movie2, in digga geschrieben und der Rest wird wiederholt
