# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  puts "Creating Restaurants"

  Establishment.create([{name: "The Reserve Restaurant", address: "649 Bridge Rd, Richmond, VIC", phone: "(03) 9246 1200", rating: "4" }])
  Establishment.create([{name: "Osteria LLaria", address: "367 Little Bourke St, Melbourne, VIC", phone: "(03) 9642 2287", rating: "5" }])
  Establishment.create([{name: "Jarrah Restaurant & Bar", address: "26 Southgate Ave, Southbank, VIC", phone: "(03) 9693 6000", rating: "4" }])

  puts "Restaurants Created"
