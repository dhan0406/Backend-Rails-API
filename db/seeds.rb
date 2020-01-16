# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

neighborhood = ["Capitol Hill", "Downtown", "International District", "SLU", "Ravenna", "U-District", "Ballard", "Fremont", "Wallingford"]

img_url = ['https://live.staticflickr.com/65535/49386732066_b9d1a4c4ed_b.jpg', 'https://live.staticflickr.com/65535/49386261668_411815f959_b.jpg','https://live.staticflickr.com/65535/49386727241_b561ec089d_k.jpg', 'https://live.staticflickr.com/65535/49386923842_6255f0a248_k.jpg', 'https://live.staticflickr.com/65535/49386923587_e8bbc21419_k.jpg', 'https://live.staticflickr.com/65535/49386726546_3f5ee1a41a_k.jpg', 'https://live.staticflickr.com/65535/49386726306_5b91823dfe_h.jpg', 'https://live.staticflickr.com/65535/49386726081_f2e75f86ee_k.jpg', 'https://live.staticflickr.com/65535/49386725831_9f64c2d793_h.jpg', 'https://live.staticflickr.com/65535/49386724971_30654433b1_k.jpg']

100.times do
  Coffeeshop.create(
    name: Faker::Coffee.unique.blend_name,
    address: Faker::Address.street_address,
    neighborhood: neighborhood.sample,
    parking: ["lot", "street"].sample,
    wifi: [true, false].sample,
    food: [true, false].sample,
    alcohol: [true, false].sample,
    img: img_url.sample
  )
end