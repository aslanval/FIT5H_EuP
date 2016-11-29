# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create(name: "Sommerferien", description: "Schiwtzen, baden, schwitzen", start_date: 100.days.from_now, location: "Hamburg", price: 1000.00)
Event.create(name: "Weihnachtsball", description: "Tanzen, lustig sein, rauchen, unanstaendige Gedanken haben", start_date: "2016-12-31", location: "Bayern", price: 30.00)
Event.create(name: "Whisky trinken", description: "An gerade Tage peated, sonst: unpeated", start_date: "2016-11-29", location: "Scotland", price: 50.00)

