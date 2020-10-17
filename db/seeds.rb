# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'rickgrimes@email.com', password: 'password', first_name: 'Rick', last_name: 'Grimes', phone_number: '5456785362', bio: "I used to be an actor on walking dead. Since I'm not doing anything anymore, I decided hosting!", host: true)
User.create(email: 'jeanbuss@email.com', password: 'password', first_name: 'Jean', last_name: 'Buss', phone_number: '3564585360', bio: "I have been hosting for year with plenty of experience to make your stay feel like you are at home!", host: true)
User.create(email: 'lilysmith@email.com', password: 'password', first_name: 'Lily', last_name: 'Smith', phone_number: '5574629487', bio: "New to traveling", host: false)
User.create(email: 'yuliagreene@email.com', password: 'password', first_name: 'Yulia', last_name: 'Greene', phone_number: '8473927502', bio: "I have been traveling the world for most of my life. I love it!", host: false)
User.create(email: 'darrellharper@email.com', password: 'password', first_name: 'Darrell', last_name: 'Harper', phone_number: '2028476299', bio: "YOLO!", host: false)

Category.create(name: "Apartment")
Category.create(name: "Condo")
Category.create(name: "Single Family Home")
