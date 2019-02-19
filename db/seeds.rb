# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Island.destroy_all

user1 = User.create!(email: 'dododu92@yahoo.fr', username: 'Dodo92', password: '123456' )
user2 = User.create!(email: 'PatrickJardin@caramail.com', username: 'PJardin', password: 'jardin00')
user3 = User.create!(email: 'womenruletheworldd@gmail.com', username: 'Ada Lovelace', password:'firstdevelopper')

Island.create!(title: 'Charming house in Paros', description: 'Come discover Paros, an authentic Greek Island with lovely sea ports and amazing beaches', price_per_night: 100, user: user1)
Island.create!(title: 'Mediterranean Apartment with Breathtaking Views', description: 'Terracotta and vibrant colors intertwine to create an apartment with a modern Mediterranean style. Enjoy breakfast on the shaded patio overlooking the breathtaking Gulf of Cefalù and float in the pool surrounded by picturesque Sicilian nature.', price_per_night: 145, user: user2)
Island.create!(title: 'Cozy Mediterranean Apartment with Street View', description: 'Escape to a comforting retreat by the sea in this tranquil residence. The home features bright touches of color throughout the renovated white interior, tasteful furnishings and decor, arched ceilings, and a bright lounge space.', price_per_night: 58, user: user2)
