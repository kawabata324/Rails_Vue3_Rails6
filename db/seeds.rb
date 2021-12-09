# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(
#   [
#     {
#       name: '田中',
#       email: 'tanaka@gmail.com',
#       age: 23
#     },
#     {
#       name: '佐藤',
#       email: 'satou@gmail.com',
#       age: 32
#     }
#   ]
# )

30.times do
  User.create({
    name: Faker::Name.first_name,
    email: Faker::Internet.free_email,
    age: rand(18..36)
  })
end
