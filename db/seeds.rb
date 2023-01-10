  puts "destroying establishments"
  Establishment.destroy_all
  puts "destroying users"
  User.destroy_all
  puts "Creating Establishments"

  Establishment.create(name: "The Reserve Restaurant", address: "649 Bridge Rd, Richmond, VIC", phone: "(03) 9246 1200", rating: "4", location_type: "bar", image: "https://cdn.concreteplayground.com/content/uploads/2020/09/BrewDog_dog_PandoraPhotography_supplied.jpg")
  Establishment.create(name: "Osteria LLaria", address: "367 Little Bourke St, Melbourne, VIC", phone: "(03) 9642 2287", rating: "5", location_type: "beach", image: "https://www.rover.com/blog/wp-content/uploads/2019/07/Durdle-Door-JURASSICCOAST.ORG_.jpg")
  Establishment.create(name: "Jarrah Restaurant & Bar", address: "26 Southgate Ave, Southbank, VIC", phone: "(03) 9693 6000", rating: "4", location_type: "park", image: "https://askmelbourne.com.au/wp-content/uploads/mathew-smith-gM6QroS17aw-unsplash.jpg")

  puts "Establishments Created"

  puts "creating users"

  em = User.create(email: "em@example.com", password: "secret", username: "Em", admin: true)
  steph = User.create(email: "steph@example.com", password: "secret", username: "StephRox", admin: true)
  chen = User.create(email: "chen@example.com", password: "secret", username: "Chen", admin: true)
  ben = User.create(email: "ben@example.com", password: "secret", username: "Ben", admin: true)

  puts "users created"
  puts "tags  created"
  water = Tag.create(name: "Water Bowl")
  indoor = Tag.create(name: "Indoor")
  outdoor = Tag.create(name: "Outdoor")
  treats = Tag.create(name: "Treats")

  # puts "created tag"
  # review = Review.create(comments: "Great vibe",user_id: 8, establishment_id: 6)
