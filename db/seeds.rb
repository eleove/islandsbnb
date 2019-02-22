# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Island.destroy_all
User.destroy_all

user1 = User.create!(email: 'elonmusk@tesla.com', username: 'Elon Musk', password: '123456' )
user1.remote_avatar_url = 'https://upload.wikimedia.org/wikipedia/commons/4/49/Elon_Musk_2015.jpg'
user1.save

user2 = User.create!(email: 'francoispinault@ppr.fr', username: 'François Pinault', password: 'iruletheworld')
user2.remote_avatar_url = 'https://www.thefamouspeople.com/profiles/images/franois-henri-pinault-1.jpg'
user2.save

user3 = User.create!(email: 'ingridbettancourt@loreal.com', username: 'Ingrid Bettancourt', password:'jelevauxbien')
user3.remote_avatar_url = 'http://l1visible.com/wp-content/uploads/2014/10/ingrid-bettencourt-1170x1033.jpg'
user3.save

island1 = Island.create!(
  title: 'Bali (Indonesia)',
  description: 'Bali is a tropical paradise in which visitors can relax and find themselves transported to another way of life by the scents of blossoming frangipani trees and burning incense. Made famous in the West by the classic Broadway musical South Pacific, the tiny island has more than its fair share of unique cultural offerings, such as shadow puppets and intricate artwork. Temples are decorated with impressive sculptures of gods and goddesses, adding a mystical spiritual element that lends an air of magic to every traveler’s visit.',
  price_per_night: 9900,
  user: user1,
  address: 'Ile Bali, Indonesie'
  )

island1.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/bali_island-768x576.jpg'
island1.save

island2 = Island.create!(
  title: 'Bermuda',
  description: 'Hundreds of thousands of people every year escape from it all on the beautiful pink sand beaches of Bermuda.',
  price_per_night: 10450,
  user: user2,
  address: 'Bermudes'
  )

island2.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/IMG_6912.jpg'
island2.save

island3 = Island.create!(
  title: 'Bora Bora (French Polynesia)',
  description: 'Bora Bora (whose original name in the Tahitian language means “first-born”) is a luxury traveler’s dream. With two mountains in the center of the island and a picture-perfect lagoon and barrier reef surrounding it, it’s the quintessential location for rest, relaxation and romance.',
  price_per_night: 8200,
  user: user3,
  address: 'Bora Bora'
  )

island3.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/Four_Seasons_Resort_Bora_Bora_Bungalows.jpg'
island3.save

island4 = Island.create!(
  title: 'Easter Island',
  description: 'Also known as Rapa Nui, this small island located in southeastern Polynesia is home to the massive moai, 887 enigmatic statues of giant heads that earned Easter Island its designation as a UNESCO World Heritage Site.',
  price_per_night: 10100,
  user: user1,
  address: 'Île de Pâques, Easter Island'
  )

island4.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/Easter_Island_Moai_Statues-768x576.jpg'
island4.save

island5 = Island.create!(
  title: 'Fiji',
  description: 'Formed through volcanic activity started 150 million years ago, Fiji is an archipelago made up of over 332 islands and more than 500 islets. Despite being remote– New Zealand, the closest significant landmass, is over 1,000 miles away– Fiji’s abundant forests, minerals and fish make it one of the most developed economies in the South Pacific.',
  price_per_night: 12700,
  user: user2,
  address: 'Republic of Fiji'
  )

island5.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/The_Point_Fiji-768x576.jpg'
island5.save

island6 = Island.create!(
  title: 'Maldives',
  description: 'Located in the Indian Ocean near India’s Lakshadweep islands, the Republic of Maldives is a group of 26 ring-like coral islands encircling clear blue lagoons. It’s also one of the least populated nations on this list, with around 328,000 people living on 200 of its 1,192 islands.',
  price_per_night: 14320,
  user: user3,
  address: 'Maldives'
  )

island6.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/800px-Sunset_in_the_Maldives-768x586.jpg'
island6.save




