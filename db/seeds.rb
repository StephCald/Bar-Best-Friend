  puts "destroying establishments"
  Establishment.destroy_all
  puts "destroying users"
  User.destroy_all
  puts "Creating Establishments"

  Establishment.create(name: "Doghouse Dog Cafe", address: "195 Johnston St, Collingwood, VIC", phone: "(03) 9417 4253", rating: "5", location_type: "Cafe", image: "https://pupsy.com.au/wp-content/uploads/2020/02/DogHouse-Cafe.png")
  Establishment.create(name: "Vincent the Dog", address: "348 Drummond st, Carlton, VIC", phone: "(03) 9348 2068", rating: "5", location_type: "Cafe", image: "https://cdn.broadsheet.com.au/cache/33/9f/339f57ae97c276ab1ca92e0e26449113.jpg")
  Establishment.create(name: "Mentone Dog Beach", address: "Mentone Parade, Mentone, VIC", phone: "0422 060 072", rating: "4", location_type: "Beach", image: "https://pupsy.com.au/wp-content/uploads/2019/01/9655_Mentone-Dog-Beach.jpg")
  Establishment.create(name: "Mathias Walking Track", address: "Mathias Rd, Olinda, VIC", phone: "0412 099 478", rating: "5", location_type: "Trail", image: "https://explorethedandenongs.com.au/wp-content/uploads/2019/03/Mathias-Walking-Track.jpg")
  Establishment.create(name: "The Tipsy Cow", address: "359 Bay st, Port Melbourne, VIC", phone: "0483 372 222", rating: "5", location_type: "Bar", image: "https://eatdrinkcheap.com.au/images/venue/the-tipsy-cow-port-melbourne.jpg")
  Establishment.create(name: "The Shady Lady", address: "36 Johnston St, Fitzroy, VIC", phone: "0421 228 482", rating: "5", location_type: "Bar", image: "https://cdn.broadsheet.com.au/melbourne/images/2019/07/26/145554-7364-135842-3778-theshadylady_hengelhardt_019_lx2fSME.jpg")

  puts "Establishments Created"

  puts "creating users"

  em = User.create(email: "em@example.com", password: "secret", username: "Em", admin: true)
  steph = User.create(email: "steph@example.com", password: "secret", username: "StephRox", admin: true)
  chen = User.create(email: "chen@example.com", password: "secret", username: "Chen", admin: true)
  ben = User.create(email: "ben@example.com", password: "secret", username: "Ben", admin: true)

  puts "users created"

  water = Tag.create(name: "Water Bowl")
  indoor = Tag.create(name: "Indoor")
  outdoor = Tag.create(name: "Outdoor")
  treats = Tag.create(name: "Treats")
  wastebag = Tag.create(name: "Waste Bags")

  puts "tags created"

  review = Review.create(comments: "Staff was so friendly to my dog and they even have a special dog menu.",user_id: 1, establishment_id: 1)
  review = Review.create(comments: "big outdoor patio and happy hour specials.",user_id: 1, establishment_id: 2)
  review = Review.create(comments: "Amazing dog beach",user_id: 1, establishment_id: 3)
  review = Review.create(comments: "My pup had the best time!",user_id: 1, establishment_id: 6)
  puts "reviews created"
