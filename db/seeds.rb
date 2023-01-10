  puts "destroying establishments"
  Establishment.destroy_all
  puts "destroying users"
  User.destroy_all
  puts "Creating Restaurants"

  Establishment.create([{name: "The Reserve Restaurant", address: "649 Bridge Rd, Richmond, VIC", phone: "(03) 9246 1200", rating: "4", type: "bar", image: "https://cdn.concreteplayground.com/content/uploads/2020/09/BrewDog_dog_PandoraPhotography_supplied.jpg"}])
  Establishment.create([{name: "Osteria LLaria", address: "367 Little Bourke St, Melbourne, VIC", phone: "(03) 9642 2287", rating: "5", type: "beach", image: "https://www.rover.com/blog/wp-content/uploads/2019/07/Durdle-Door-JURASSICCOAST.ORG_.jpg"}])
  Establishment.create([{name: "Jarrah Restaurant & Bar", address: "26 Southgate Ave, Southbank, VIC", phone: "(03) 9693 6000", rating: "4", type: "park", image: "https://askmelbourne.com.au/wp-content/uploads/mathew-smith-gM6QroS17aw-unsplash.jpg" }])

  puts "Restaurants Created"

  puts "creating users"

  em = User.create(email: "em@example.com", password: "secret", username: "Em")
  steph = User.create(email: "steph@example.com", password: "secret", username: "StephRox")
  chen = User.create(email: "chen@example.com", password: "secret", username: "Chen")
  ben = User.create(email: "ben@example.com", password: "secret", username: "Ben")

  puts "users created"

  water = Tag.create(name: "Water Bowl")
  indoor = Tag.create(name: "Indoor")
  outdoor = Tag.create(name: "Outdoor")
  treats = Tag.create(name: "Treats")

  # puts "created tag"
  # review = Review.create(comments: "Great vibe",user_id: 8, establishment_id: 6)
