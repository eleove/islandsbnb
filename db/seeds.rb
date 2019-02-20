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
user2 = User.create!(email: 'francoispinault@ppr.fr', username: 'François Pinault', password: 'iruletheworld')
user3 = User.create!(email: 'ingridbettancourt@loreal.com', username: 'Ingrid Bettancourt', password:'jelevauxbien')

island1 = Island.create!(
  title: 'Bali (Indonesia)',
  description: 'Bali is a tropical paradise in which visitors can relax and find themselves transported to another way of life by the scents of blossoming frangipani trees and burning incense. Made famous in the West by the classic Broadway musical South Pacific, the tiny island has more than its fair share of unique cultural offerings, such as shadow puppets and intricate artwork. Temples are decorated with impressive sculptures of gods and goddesses, adding a mystical spiritual element that lends an air of magic to every traveler’s visit.',
  price_per_night: 990,
  user: user1,
  )

island1.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/bali_island-768x576.jpg'
island1.save

island2 = Island.create!(
  title: 'Bermuda',
  description: 'Hundreds of thousands of people every year escape from it all on the beautiful pink sand beaches of Bermuda.',
  price_per_night: 1255,
  user: user2
  )

island2.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/IMG_6912.jpg'
island2.save

island3 = Island.create!(
  title: 'Bora Bora (French Polynesia)',
  description: 'Bora Bora (whose original name in the Tahitian language means “first-born”) is a luxury traveler’s dream. With two mountains in the center of the island and a picture-perfect lagoon and barrier reef surrounding it, it’s the quintessential location for rest, relaxation and romance.',
  price_per_night: 2500,
  user: user3
  )

island3.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/Four_Seasons_Resort_Bora_Bora_Bungalows.jpg'
island3.save

island4 = Island.create!(
  title: 'Easter Island',
  description: 'Also known as Rapa Nui, this small island located in southeastern Polynesia is home to the massive moai, 887 enigmatic statues of giant heads that earned Easter Island its designation as a UNESCO World Heritage Site.',
  price_per_night: 1010,
  user: user1,
  )

island4.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/Easter_Island_Moai_Statues-768x576.jpg'
island4.save

island5 = Island.create!(
  title: 'Fiji',
  description: 'Formed through volcanic activity started 150 million years ago, Fiji is an archipelago made up of over 332 islands and more than 500 islets. Despite being remote– New Zealand, the closest significant landmass, is over 1,000 miles away– Fiji’s abundant forests, minerals and fish make it one of the most developed economies in the South Pacific.',
  price_per_night: 1255,
  user: user2
  )

island5.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/The_Point_Fiji-768x576.jpg'
island5.save

island6 = Island.create!(
  title: 'Maldives',
  description: 'Located in the Indian Ocean near India’s Lakshadweep islands, the Republic of Maldives is a group of 26 ring-like coral islands encircling clear blue lagoons. It’s also one of the least populated nations on this list, with around 328,000 people living on 200 of its 1,192 islands.',
  price_per_night: 2500,
  user: user3
  )

island6.remote_photo_url = 'https://greenglobaltravel.com/wp-content/uploads/800px-Sunset_in_the_Maldives-768x586.jpg'
island6.save




