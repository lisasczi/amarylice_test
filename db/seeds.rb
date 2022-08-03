# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rose_flower = Flower.create!(
  name: "Rose rouge",
  description: "super rose qui durera au moins une semaine dans son vase",
  price: 2.99
)

tulipe_flower = Flower.create!(
  name: "tulipe jaune",
  description: "superbe fleur qui nécessite peu d'eau",
  price: 1.99
)

tournesol_flower = Flower.create!(
  name: "tournesol",
  description: "si vous ne savez pas où est le soleil...",
  price: 2.50
)

essaie = JoinTableFlowersCart.create!(
  flower_id: 1,
  cart_id: 1,
  quantity: 1
)

essaies = JoinTableFlowersCart.create!(
  flower_id: 2,
  cart_id: 1,
  quantity: 2
)
