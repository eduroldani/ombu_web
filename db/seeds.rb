# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "Running Seeds"

edu = User.create(first_name: "Eduardo", last_name: "Roldan", email: "edu@gmail.com", password: "secret", is_admin: true)

nico = User.create(first_name: "Nico", last_name: "Caro", email: "nico@gmail.com", password: "secret", is_teacher: true)

sami = User.create(first_name: "Sami", last_name: "Chamut", email: "sami@gmail.com", password: "secret")


10.times do
  Course.create(title: Faker::Restaurant.name, date: Faker::Date.forward(days: 23) , description:Faker::Restaurant.description, category: Faker::Restaurant.type  , minimum_age:Faker::Device.build_number , max_age: Faker::Device.build_number, capacity:Faker::Device.build_number, level: Faker::Device.build_number, location:Faker::Address.full_address )

end

p "Seeds Done"
