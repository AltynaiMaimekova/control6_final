# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(user_name: 'Bill Jason', email:'bill@gmail.com', password: 'qwerty1', password_confirmation: 'qwerty1')
user2 = User.create!(user_name: 'Andrea Martini', email:'andrea@gmail.com', password: 'qwerty2', password_confirmation: 'qwerty2')
post1 = user1.posts.create!(caption: 'Best summer in my life', image: File.new("app/assets/images/summer.jpg"))
post2 = user2.posts.create!(caption: 'My family', image: File.new("app/assets/images/family.jpg"))
post3 = user1.posts.create!(caption: 'Winter', image: File.new("app/assets/images/winter.jpg"))
post4 = user2.posts.create!(caption: 'Spring', image: File.new("app/assets/images/spring.jpg"))
post5 = user1.posts.create!(caption: 'Love', image: File.new("app/assets/images/love.jpg"))
post6 = user2.posts.create!(caption: 'Italy', image: File.new("app/assets/images/italy.jpg"))
post7 = user1.posts.create!(caption: 'Travel', image: File.new("app/assets/images/travel.jpg"))
post8 = user2.posts.create!(caption: 'Sea', image: File.new("app/assets/images/sea.jpg"))
post9 = user1.posts.create!(caption: 'Woman', image: File.new("app/assets/images/woman.jpg"))
post10 = user2.posts.create!(caption: 'Stars', image: File.new("app/assets/images/stars.jpg"))
post11 = user1.posts.create!(caption: 'Leo', image: File.new("app/assets/images/leo.jpg"))
post12 = user2.posts.create!(caption: 'Kyrgyzstan', image: File.new("app/assets/images/kyrgyzstan.jpg"))



