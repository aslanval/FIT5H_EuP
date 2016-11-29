# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create(name: "Titanic" , description: "Romanze/Drama" , released_on: "1998-01-08")
Movie.create(name: "Interstellar" , description: "SciFi" , released_on: "2014-11-06")
Movie.create(name: "Der Marsianer" , description: "SciFi" , released_on: "2015-10-08")