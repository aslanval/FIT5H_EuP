name1 = "Larry"
name2 = "Curly"
name3 = "Moe"
name4 = "Shemp"
health1 = 60
health2 = 125
health3 = 100
health4 = 90
zeit = Time.now.strftime("%A %d/%ms/%G at %R%P")

puts "#{name1} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."
2. times do
puts "#{name3} has a health of #{health3}.".center(50, '*')
end
puts "Players:\n\t#{name1}\n\t#{name2}\n\t#{name3}"
puts "The game started on #{zeit}"

#var.rjust(30, 'lol')
