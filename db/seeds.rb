  puts "destroying establishments"
  Establishment.destroy_all
  puts "destroying users"
  User.destroy_all
  puts "destroying tags"
  Tag.destroy_all
  puts "Creating Establishments."

  Establishment.create(name: "Doghouse Dog Cafe", address: "195 Johnston St, Collingwood, VIC", phone: "(03) 9417 4253", rating: "5", location_type: "cafe", image: "https://pupsy.com.au/wp-content/uploads/2020/02/DogHouse-Cafe.png")
  Establishment.create(name: "Vincent the Dog", address: "348 Drummond st, Carlton, VIC", phone: "(03) 9348 2068", rating: "5", location_type: "cafe", image: "https://cdn.broadsheet.com.au/cache/33/9f/339f57ae97c276ab1ca92e0e26449113.jpg")
  Establishment.create(name: "Mentone Dog Beach", address: "Mentone Parade, Mentone, VIC", phone: "0422 060 072", rating: "4", location_type: "beach", image: "https://pupsy.com.au/wp-content/uploads/2019/01/9655_Mentone-Dog-Beach.jpg")
  Establishment.create(name: "The Tipsy Cow", address: "359 Bay st, Port Melbourne, VIC", phone: "0483 372 222", rating: "5", location_type: "bar", image: "https://eatdrinkcheap.com.au/images/venue/the-tipsy-cow-port-melbourne.jpg")
  Establishment.create(name: "The Shady Lady", address: "36 Johnston St, Fitzroy, VIC", phone: "0421 228 482", rating: "5", location_type: "bar", image: "https://cdn.broadsheet.com.au/melbourne/images/2019/07/26/145554-7364-135842-3778-theshadylady_hengelhardt_019_lx2fSME.jpg")
  Establishment.create(name: "Lorne Dog Beach", address: "Lorne VIC 3232", phone: "0487 236 493", rating: "4", location_type: "beach", image: "https://www.akc.org/wp-content/uploads/2019/02/NomNomNow_Dalmatian.jpeg")
  Establishment.create(name: "Yarra Park Dog Off Leash Area", address: "56 Vale St S, East Melbourne, VIC", phone: "0312 983 138", rating: "4", location_type: "park", image: "https://www.dogingtonpost.com/wp-content/uploads/2018/03/dogpark_feature-min.jpg")
  Establishment.create(name: "Clayton Reserve Fenced Dog Park", address: "201-241 Macaulay Rd, North Melbourne, VIC", phone: "0394 836 009", rating: "4", location_type: "park", image: "https://scitechdaily.com/images/Dog-Park.jpg")
  Establishment.create(name: "Ardrie Park Dog Off Leash Area", address: "64 Ardrie Rd, Malvern East, VIC", phone: "0339 776 122", rating: "5", location_type: "park", image: "https://avodermnatural.com/wp-content/uploads/2020/12/puppy-playtime-benefits-of-dog-parks-jpg.jpg")
  Establishment.create(name: "Darebin Creek Trail", address: "Darebin Creek Trail, Alphington, VIC", phone: "0431 745 001", rating: "5", location_type: "trail", image: "https://www.popsci.com/uploads/2020/08/26/GVGGK5MCDBEP3PS22LJMHY7HV4.jpg")
  Establishment.create(name: "Old Man Drew", address: "359-361 Mount Alexander Road, Ascot Vale, VIC", phone: "(03) 9375 4024", rating: "5", location_type: "cafe", image: "https://cdn.broadsheet.com.au/cache/0d/56/0d56a4e46e2645d097dd341c855a0c5d.jpg")
  Establishment.create(name: "Stomping Ground", address: " 100 Gipps St, Collingwood, VIC", phone: "(03) 9415 1944", rating: "5", location_type: "bar", image: "https://data.awol.com.au/wp-content/uploads/2020/08/harlow-bar-dog-search-lead.jpg")
  Establishment.create(name: "Penders Park", address: "Pender St, St David St, Thornbury VIC ", phone: "(03) 8470 8888", rating: "5", location_type: "park", image: "https://hdp-au-prod-app-dare-yoursay-files.s3.ap-southeast-2.amazonaws.com/4016/4257/1264/SOCIALISEPHOTO_VD2019_PPARK_001.jpg")
  Establishment.create(name: "Rebel Rebel", address: "93 Plenty Rd, Preston VIC 3072", phone: "(03) 9939 3897", rating: "5", location_type: "bar", image: "https://cdn.broadsheet.com.au/cache/87/42/8742e5901970f7496f3f9bd7e9c515df.jpg")
  Establishment.create(name: "Carwyn Cellars", address: "877 High St, Thornbury VIC 3071", phone: "(03) 9484 1820", rating: "5", location_type: "bar", image: "https://cdn.broadsheet.com.au/cache/01/7d/017d1962f346fabc0c206311a109ccc9.jpg")
  Establishment.create(name: "Chez Misty", address: "103 Grey St, St Kilda VIC 3182", phone: "(04) 3133 1093", rating: "5", location_type: "cafe", image: "https://img.delicious.com.au/pFsL_T5s/w759-h506-cfill/del/2022/04/chez-misty-st-kilda-166653-2.jpg")
  Establishment.create(name: "Port Melbourne Dog Beach", address: "Bay Trail, Port Melbourne VIC 3207", phone: "(01) 2897 5634  ", rating: "5", location_type: "beach", image: "https://www.popsci.com/uploads/2020/08/26/GVGGK5MCDBEP3PS22LJMHY7HV4.jpg")
  Establishment.create(name: "Keast Park Dog Beach", address: "Nepean Hwy, Seaford VIC 3198", phone: "(05) 4597 3578", rating: "5", location_type: "beach", image: "https://petkeen.com/wp-content/uploads/2022/10/two-happy-welsh-corgi-pembroke-dogs-at-a-beach_Jus_Ol_Shutterstock-760x508.jpg")
  Establishment.create(name: "Mathias Track, Olinda", address: "Mathias Rd, Olinda VIC 3788", phone: "(05) 5685 8698", rating: "5", location_type: "trail", image: "https://explorethedandenongs.com.au/wp-content/uploads/2019/03/Mathias-Walking-Track.jpg")
  Establishment.create(name: "Merri Creek Trail", address: "397-405 State Route 45, Fitzroy North VIC 3068", phone: "(04) 1875 0258 ", rating: "4", location_type: "trail", image: "http://blokeonbike.com/bloke1/wp-content/uploads/2017/07/merri-creek-3.jpg")
  Establishment.create(name: "Parco Canteen", address: "2 Argyle Pl S, Carlton VIC 3053", phone: "(04) 9313 0317", rating: "4", location_type: "cafe", image: "https://hiddencitysecrets.com.au/wp-content/uploads/2019/07/Lux-Foundry-Dog-Friendly-Cafes-Brunswick-Melbourne-Terrace-4.jpg")
  Establishment.create(name: "A Minor Place", address: "103 Albion St, Brunswick VIC 3056", phone: "(03) 9384 3131", rating: "5", location_type: "cafe", image: "https://resdiaryportal.wpengine.com/wp-content/uploads/2022/07/a-minor-place-melbourne-restaurant.jpg")
  Establishment.create(name: "The Rainbow Hotel", address: "27 St David St, Fitzroy VIC 3065", phone: "(03) 9419 4193", rating: "5", location_type: "bar", image: "https://pupsy.com.au/wp-content/uploads/2022/02/The-Rainbow-Hotel-Fitzroy-5-106-1.png")

  puts "Establishments Created."

  puts "creating users."

  em = User.create(email: "em@example.com", password: "secret", username: "Em", admin: true)
  steph = User.create(email: "steph@example.com", password: "secret", username: "StephRox", admin: true)
  chen = User.create(email: "chen@example.com", password: "secret", username: "Chen", admin: true)
  ben = User.create(email: "ben@example.com", password: "secret", username: "Ben", admin: true)

  puts "users created"

  puts "creating tags"

  outdoor = Tag.create(name: "Outdoor")
  indoor = Tag.create(name: "Indoor")
  treats = Tag.create(name: "Treats")
  water = Tag.create(name: "Water Bowl")
  dogmenu = Tag.create(name: "Dog Menu")
  wastebag = Tag.create(name: "Waste Bags")

  puts "tags created"
  puts "creating reviews"

  review = Review.create(comments: "Staff was so friendly to my dog and they even have a special dog menu.",user_id: 1, establishment_id: 1)
  review = Review.create(comments: "big outdoor patio and happy hour specials.",user_id: 1, establishment_id: 2)
  review = Review.create(comments: "Amazing dog beach",user_id: 1, establishment_id: 3)
  review = Review.create(comments: "My pup had the best time!",user_id: 1, establishment_id: 6)
  puts "reviews created"
