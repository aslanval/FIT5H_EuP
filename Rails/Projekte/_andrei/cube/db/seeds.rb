# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Worker.create(name: "Mueller", persnr: 1, gehalt: 3050.80, eintritt: "2016-08-20")
Worker.create(name: "Schmidt", persnr: 2, gehalt: 3714.10, eintritt: "2016-08-01")
Worker.create(name: "Tiedemann", persnr: 3, gehalt: 4150.70, eintritt: "2016-04-12")