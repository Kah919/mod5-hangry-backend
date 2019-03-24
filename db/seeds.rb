# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Recipe.destroy_all
Category.destroy_all
Favorite.destroy_all

# User.create(username: "TEST", password: "PASS")
Category.create(name: "Vegan", img: "https://www.sunflowercafenashville.com/uploads/1/1/6/0/11603622/sunflower-5430_orig.jpg")
Category.create(name: "Asian", img: "https://sharedappetite.com/wp-content/uploads/2018/02/spicy-lamb-coconut-curry-ramen-5-copy.jpg")
Category.create(name: "Dessert", img: "https://cdn10.bostonmagazine.com/wp-content/uploads/sites/2/2017/07/ice-cream-boston.jpg")
Category.create(name: "Breakfast", img: "https://cdn-5a2f7152f911c832d856c321.closte.com/wp-content/uploads/2013/07/Bowlsofvariouscereals.jpg")
Category.create(name: "Vegeterian", img: "https://static01.nyt.com/images/2011/09/21/science/23recipehealth/23recipehealth-superJumbo.jpg")
Category.create(name: "Pescetarian", img: "https://d3d7qmccklvqbw.cloudfront.net/wp-content/uploads/2017/12/sashimi-resized.jpg")
Category.create(name: "Sea Food", img: "https://www.savingdessert.com/wp-content/uploads/2018/05/Grilled-Lobster-Tails-9.jpg")
Category.create(name: "Beverage", img: "http://www.goodfoodpittsburgh.com/wp-content/uploads/2017/08/mlkshake.png")
Category.create(name: "Gluten Free", img: "https://foodimentaryguy.files.wordpress.com/2017/01/gluten-free.jpg")
