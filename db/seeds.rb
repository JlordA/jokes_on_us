# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "destroying seeds"
Joke.destroy_all
Gig.destroy_all
Review.destroy_all
User.destroy_all
Club.destroy_all




User.create!(user_name:Faker::Internet.username,
        name:Faker::FunnyName.two_word_name ,
        email:Faker::Internet.email,
        pic:"https://kcrewsphoto.com/wp-content/uploads/2016/09/SantaBarbaraBabyModelHeadshotPhotography_05.jpg",
        bio:Faker::Quote.famous_last_words ,
        age:rand(18..70) ,
        password:"password",
        hometown:Faker::Address.full_address 
         )



         User.create!(user_name:Faker::Internet.username,
         name:Faker::FunnyName.two_word_name ,
         email:Faker::Internet.email,
         pic:"https://cdn.onebauer.media/one/empire-tmdb/films/12110/images/y7N276seR43H31xvDbWMWxEsDr.jpg?quality=50&width=1800&ratio=16-9&resizeStyle=aspectfill&format=jpg",
         bio:Faker::Quote.famous_last_words ,
         age:rand(18..70) ,
         password:"password",
         hometown:Faker::Address.full_address 
          )


          User.create!(user_name:Faker::Internet.username,
          name:Faker::FunnyName.two_word_name ,
          email:Faker::Internet.email,
          pic:"https://www.sickchirpse.com/wp-content/uploads/2015/04/Angry-Old-Lady.jpg",
          bio:Faker::Quote.famous_last_words ,
          age:rand(18..70) ,
          password:"password",
          hometown:Faker::Address.full_address 
           )

        User.create!(user_name:Faker::Internet.username,
        name:Faker::FunnyName.two_word_name ,
        email:Faker::Internet.email,
        pic:"https://images.freeimages.com/images/premium/previews/1212/12121329-beach-bro.jpg",
        bio:Faker::Quote.famous_last_words ,
        age:rand(18..70) ,
        password:"password",
        hometown:Faker::Address.full_address 
         )


         User.create!(user_name:Faker::Internet.username,
        name:Faker::FunnyName.two_word_name ,
        email:Faker::Internet.email,
        pic:"https://media.proprofs.com/images/QM/user_images/2170919/1521925419.jpeg",
        bio:Faker::Quote.famous_last_words ,
        age:rand(18..70) ,
        password:"password",
        hometown:Faker::Address.full_address 
         )



         User.create!(user_name:Faker::Internet.username,
        name:Faker::FunnyName.two_word_name ,
        email:Faker::Internet.email,
        pic:"https://i.guim.co.uk/img/media/73c104f8f62719499143da60768d67b4d71916e7/465_487_2374_1424/master/2374.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=43cf7615e777d12aa1ac42333e6e74b1",
        bio:Faker::Quote.famous_last_words ,
        age:rand(18..70) ,
        password:"password",
        hometown:Faker::Address.full_address 
         )

         User.create!(user_name:Faker::Internet.username,
        name:Faker::FunnyName.two_word_name ,
        email:Faker::Internet.email,
        pic:"https://static01.nyt.com/images/2018/03/17/obituaries/17HAWKING/merlin_135590181_4b2e46cb-5d98-469c-8c01-792d9126d41c-articleLarge.jpg?quality=75&auto=webp&disable=upscale",
        bio:Faker::Quote.famous_last_words ,
        age:rand(18..70) ,
        password:"password",
        hometown:Faker::Address.full_address 
         )


puts "seeding users"

User.create!(user_name:"chrisangle", name:"Chris Angle", email:"therealchrisangle@hotmale.com", pic:"https://www.oprah.com/g/image-resizer?width=670&link=http://static.oprah.com/images/tows/200705/20070507/20070507_101_350x263.jpg", bio: "I want to ride my motorcycle up the side of the Luxor to the light and vanish.", age: 52, password: "chris_angle", hometown: "Long Island")
User.create!(user_name:"fathertime",name:"Father Time", email:"elpapi@hotmale.com", pic:"https://static01.nyt.com/images/2014/11/03/multimedia/magazine-amazingrandi/magazine-amazingrandi-square640.jpg", bio: "I am the amazing randi", age: 102, password: "dandy_randy", hometown: "Kentucky")

puts "seeding clubs"

Club.create!(name: "Sesame Street", address:"123 Sesame Street, Brooklyn NY 11214", pic: "http://www.onthesetofnewyork.com/newsimages/sesamestreet03.jpg", description: "I can tell you how to get, how to get to Sesame Street", req_likes: 20)
Club.create!(name: "Chilis", address:"420 Donkey Sauce Way, Los Angeles CA 90210", pic: "https://www.foodbusinessnews.net/ext/resources/FBN-Features/8/ChilisRestaurant_Lead.jpg?1534346636", description: "I want my baby back baby back baby back.... ribs", req_likes: 2)
Club.create!(name: "Comedy Cellar", address:"117 MacDougal St, New York, NY 10012", pic: "https://theinterrobang-a.akamaihd.net/wp-content/uploads/2017/08/comedy-cellar-640x428.jpg", description: "Premier NYC Comedy Club", req_likes: 35)
Club.create!(name: "Laugh Factory", address:"8001 Sunset Blvd, Los Angeles, CA 90046", pic: "https://img.grouponcdn.com/deal/c28fdf8b213a4a338c5d47dec5144f2f/2f/v1/c700x420.jpg", description: "Best Comedy Spot In LA", req_likes: 40)
Club.create!(name: "Life Care Center", address:Faker::Address.full_address, pic: "https://images.theconversation.com/files/330600/original/file-20200427-145508-18uj5n.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop", description: "The Worst Kept Secret for a reason", req_likes: 1)

Club.create!(name: "RNC Convention", address:Faker::Address.full_address, pic: "https://cbsnews2.cbsistatic.com/hub/i/r/2018/11/20/f71c828e-82c8-45dc-8dc9-51a64b7347c8/thumbnail/640x393/39c02153a574edf4ca6eeb3af768bcd0/gettyimages-547110672.jpg", description: "We dont take kindly to your kind around here, also here's a free gun 🔫
", req_likes: 100)

# puts "seeding gigs"

# Gig.create!(club_id: Club.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.forward(days: 23), price: rand(5..30))
# Gig.create!(club_id: Club.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.forward(days: 23), price: rand(5..30))
# Gig.create!(club_id: Club.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.forward(days: 23), price: rand(5..30))
# Gig.create!(club_id: Club.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.forward(days: 23), price: rand(5..30))
# Gig.create!(club_id: Club.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.forward(days: 23), price: rand(5..30))
# Gig.create!(club_id: Club.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.forward(days: 23), price: rand(5..30))
# Gig.create!(club_id: Club.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.forward(days: 23), price: rand(5..30))
# Gig.create!(club_id: Club.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.forward(days: 23), price: rand(5..30))
# Gig.create!(club_id: Club.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.forward(days: 23), price: rand(5..30))


puts "Done seeding"