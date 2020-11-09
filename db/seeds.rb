# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Joke.destroy_all
Gig.destroy_all
Review.destroy_all
User.destroy_all
Club.destroy_all


User.create(name:"Chris Angle", email:"therealchrisangle@hotmale.com", pic:"https://www.oprah.com/g/image-resizer?width=670&link=http://static.oprah.com/images/tows/200705/20070507/20070507_101_350x263.jpg", bio: "I want to ride my motorcycle up the side of the Luxor to the light and vanish.", age: 52, password: "chris_angle", hometown: "Long Island")
User.create(name:"Father Time", email:"elpapi@hotmale.com", pic:"https://static01.nyt.com/images/2014/11/03/multimedia/magazine-amazingrandi/magazine-amazingrandi-square640.jpg", bio: "I am the amazing randi", age: 102, password: "dandy_randy", hometown: "Kentucky")

Club.create(name: "Sesame Street", address:"123 Sesame Street, Brooklyn NY 11214", pic: "https://lh3.googleusercontent.com/proxy/lNd1u8SjVD5Pu-VqLA40sk078mNwvhw0p-Z2VQpggAAtVG87qincASWpjLkpQY-6ME45Mul2AVM7z5Ur7UmzcQs6ME_3GpLr0HWXF5eNcdxTsqAPBO8", description: "I can tell you how to get, how to get to Sesame Street", req_likes: 2)
Club.create(name: "Chilis", address:"420 Donkey Sauce Way, Los Angeles CA 90210", pic: "https://www.foodbusinessnews.net/ext/resources/FBN-Features/8/ChilisRestaurant_Lead.jpg?1534346636", description: "I want my baby back baby back baby back.... ribs", req_likes: 2)