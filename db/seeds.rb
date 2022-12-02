# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.create(name: "test1")
user2 = User.create(name: "test2")
user3 = User.create(name: "test3")

dev1 = Developer.create(name: "Dev1", image: "link1", description: "Hire me for web development", title: "Full Stack Web Developer", rating: 4, salary_exp: 15000, user: user1)
dev2 = Developer.create(name: "Dev2", image: "link2", description: "Hire me for web development", title: "Front End Web Developer", rating: 5, salary_exp: 18000, user: user2)
dev3 = Developer.create(name: "Dev3", image: "link3", description: "Hire me for web development", title: "Back End Web Developer", rating: 3, salary_exp: 13000, user: user3)


reserv1 = Reservation.create(user: user1, developer: dev1, reservation_date: "12/02/2023", city: "Canada")
reserv2 = Reservation.create(user: user2, developer: dev2, reservation_date: "12/09/2023", city: "France")
reserv3 = Reservation.create(user: user3, developer: dev3, reservation_date: "01/02/2023", city: "Paris")



