# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "chair", price: 40, image_url: "https://www.ikea.com/us/en/images/products/stefan-chair-brown-black__0727320_pe735593_s5.jpg?f=xl", description: "a nice place to sit.")
Product.create(name: "table", price: 100, image_url: "https://rnb.scene7.com/is/image/roomandboard/698884_wood_W?size=675,400&scl=1&$prodzoom0$&size=675,400&scl=1", description: "a nice place to place things.")
Product.create(name: "rug", price: 80, image_url: "https://www.ikea.com/us/en/images/products/vedbaek-rug-low-pile-multicolor__0714377_pe730080_s5.jpg?f=xl", description: "a floor decoration.")