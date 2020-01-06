# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

neighborhood = ["Capitol Hill", "Downtown", "International District", "SLU", "Ravenna", "U-District", "Ballard", "Magnolia", "Fremont", "Wallingford"]

10.times do
  Coffeeshop.create(
    name: Faker::Coffee.unique.blend_name,
    neighborhood: neighborhood.sample,

  )
end