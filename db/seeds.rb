# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
  puts "destroying establishments"
  Establishment.destroy_all
  puts "destroying users"
  User.destroy_all
  puts "Creating Restaurants"

  Establishment.create([{name: "The Reserve Restaurant", address: "649 Bridge Rd, Richmond, VIC", phone: "(03) 9246 1200", rating: "4", type: "bars", image: "https://cdn.concreteplayground.com/content/uploads/2020/09/BrewDog_dog_PandoraPhotography_supplied.jpg"}])
  Establishment.create([{name: "Osteria LLaria", address: "367 Little Bourke St, Melbourne, VIC", phone: "(03) 9642 2287", rating: "5", type: "beaches", image: "https://www.rover.com/blog/wp-content/uploads/2019/07/Durdle-Door-JURASSICCOAST.ORG_.jpg"}])
  Establishment.create([{name: "Jarrah Restaurant & Bar", address: "26 Southgate Ave, Southbank, VIC", phone: "(03) 9693 6000", rating: "4", type: "parks", image: "https://askmelbourne.com.au/wp-content/uploads/mathew-smith-gM6QroS17aw-unsplash.jpg" }])

  puts "Restaurants Created"

  puts "creating users"

  em = User.create(email: "em@example.com", password: "secret")
  steph = User.create(email: "steph@example.com", password: "secret")
  chen = User.create(email: "chen@example.com", password: "secret")
  ben = User.create(email: "ben@example.com", password: "secret")

  puts "users created"

  # puts "destroying chen's fav"
  # chen.destroy_all
  # puts "Creating chen's fav"
  # chen_fav = chen.favorite(Establishment(4))
  # puts "chen's fav Created"
