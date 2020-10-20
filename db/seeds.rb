# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rick = User.create(email: 'rickgrimes@email.com', password: 'password', first_name: 'Rick', last_name: 'Grimes', phone_number: '5456785362', bio: "I used to be an actor on walking dead. Since I'm not doing anything anymore, I decided hosting!")
jean = User.create(email: 'jeanbuss@email.com', password: 'password', first_name: 'Jean', last_name: 'Buss', phone_number: '3564585360', bio: "I have been hosting for year with plenty of experience to make your stay feel like you are at home!")
lily = User.create(email: 'lilysmith@email.com', password: 'password', first_name: 'Lily', last_name: 'Smith', phone_number: '5574629487', bio: "New to traveling")
yulia = User.create(email: 'yuliagreene@email.com', password: 'password', first_name: 'Yulia', last_name: 'Greene', phone_number: '8473927502', bio: "I have been traveling the world for most of my life. I love it!")
darrell = User.create(email: 'darrellharper@email.com', password: 'password', first_name: 'Darrell', last_name: 'Harper', phone_number: '2028476299', bio: "YOLO!")

apartment = Category.create(name: "Apartment")
condo = Category.create(name: "Condo")
single_family_home = Category.create(name: "Single Family Home")

Listing.create(user: rick, title: "Beautiful Apartment!", description: "Wonderful apartmentment located right next to the beach! 5 miles to all tourist locations!", price: 80, bedroom: 1, bathroom: 1, address: "555 Queens Ln", city: "Miami", state: "FL", category: apartment, img: "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
Listing.create(user: rick , title: "Awesome Condo", description: "This is a newly built condo built in 2020. Amazing views at all angles.", price: 100, bedroom: "2", bathroom: "1", address: "1458 Lauren Rd", city: "Houston", state: "TX", category: condo, img: "https://images.unsplash.com/photo-1564834552305-aea63611ff08?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")

john = Guest.create(email: "johndoe@email.com", password: "password", first_name: "John", last_name: "Doe", phone_number: "53462783940", bio: "I am new to traveling!", )