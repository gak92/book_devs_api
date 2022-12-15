# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


admin = User.create(name: "admin", email: "admin@test.com", password: "1234567", jti: "asfsdffgdsgfgfg", admin: true)

user1 = User.create(name: "test1", email: "test1@test.com", password: "1234567", jti: "asfsdfghdsgfgfg")
user2 = User.create(name: "test2", email: "test2@test.com", password: "1234567", jti: "asfsdffgklgfgfg")
user3 = User.create(name: "test3", email: "test3@test.com", password: "1234567", jti: "asfrtffgdsguifg")


dev1 = Developer.create(name: "Dev1", image: "https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg", description: "Hire me for web development", title: "Full Stack Web Developer", rating: 4, salary_exp: 15000, user: admin)

dev2 = Developer.create(name: "Dev2", image: "https://img.freepik.com/premium-photo/oh-my-god-portrait-astonished-handsome-man-denim-casual-shirt-looking-camera-with-big-amazed-eyes-saying-wow-shocked-by-unbelievable-news-indoor-studio-shot-isolated-yellow-background_416530-21128.jpg?w=2000", description: "Hire me for web development", title: "Front End Web Developer", rating: 5, salary_exp: 18000, user: admin)

dev3 = Developer.create(name: "Dev3", image: "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", description: "Hire me for web development", title: "Back End Web Developer", rating: 3, salary_exp: 13000, user: admin)

dev4 = Developer.create(name: "Dev4", image: "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", description: "Hire me for flutter development", title: "Back End Web Developer", rating: 3, salary_exp: 13000, user: admin)


reserv1 = Reservation.create(user: user1, developer: dev1, reservation_date: "12/02/2023", city: "Canada")
reserv2 = Reservation.create(user: user2, developer: dev2, reservation_date: "12/09/2023", city: "France")
reserv3 = Reservation.create(user: user3, developer: dev3, reservation_date: "01/02/2023", city: "Paris")



