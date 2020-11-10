# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying seeds"
Joke.destroy_all
Gig.destroy_all
Review.destroy_all
User.destroy_all
Club.destroy_all


puts "seeding users"

User.create!(name:"Chris Angle", email:"therealchrisangle@hotmale.com", pic:"https://www.oprah.com/g/image-resizer?width=670&link=http://static.oprah.com/images/tows/200705/20070507/20070507_101_350x263.jpg", bio: "I want to ride my motorcycle up the side of the Luxor to the light and vanish.", age: 52, password_digest: "chris_angle", hometown: "Long Island")
User.create!(name:"Father Time", email:"elpapi@hotmale.com", pic:"https://static01.nyt.com/images/2014/11/03/multimedia/magazine-amazingrandi/magazine-amazingrandi-square640.jpg", bio: "I am the amazing randi", age: 102, password_digest: "dandy_randy", hometown: "Kentucky")

puts "seeding clubs"

Club.create!(name: "Sesame Street", address:"123 Sesame Street, Brooklyn NY 11214", pic: "http://www.onthesetofnewyork.com/newsimages/sesamestreet03.jpg", description: "I can tell you how to get, how to get to Sesame Street", req_likes: 2)
Club.create!(name: "Chilis", address:"420 Donkey Sauce Way, Los Angeles CA 90210", pic: "https://www.foodbusinessnews.net/ext/resources/FBN-Features/8/ChilisRestaurant_Lead.jpg?1534346636", description: "I want my baby back baby back baby back.... ribs", req_likes: 2)

puts "Done seeding"