name1 = "larry" # Aufgabe B
name2 = "curly" # Aufgabe H
name3 = "moe" # Aufgabe H
health = 60 # Aufgabe C
puts "#{name1}\'s health is #{health}\n" # Aufgabe D
puts "#{name1}\'s health is #{health*3}" # Aufgabe E
puts "#{name1}\'s health is #{health/9}" # Aufgabe F als INT
puts "#{name1}\'s health is #{health/9.0}" # Aufgabe F als Float
puts "#{name1}\'s health is #{health.to_f/9}" # Aufgabe F als Float(andere Variante)
puts "Players:\n\t#{name1}\n\t#{name2}\n\t#{name3}" # Aufgabe G & H  	\n - Eingabetaste	\t - tab

# Aufgabe G & H(andere Variante)
allenamen = <<HEREDOC
Player:
	#{name1}
	#{name2}
	#{name3}
HEREDOC
puts allenamen