# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  admin = User.create!(name: "Miss Admin", email: "testadmin@testadmin.123", password: "testadmin123", admin: true)
  user = User.create!(name: "Sir User", email: "testuser@testuser.123", password: "testuser123", admin: false)
  remy = Author.create!(name: "Sir Remy Drools-a-lot")


  books = [
    { title: "All About Dogs",
      author_id: 1,
      description: "A dog is a mammal in the order Carnivora. Dogs were domesticated from wolves as recently as 15,000 years ago.",
      price: 15.99,
      image: "/public/doge.png"},
    { title: "Dogs Are Life",
      author_id: 1,
      description: "It is estimated that for more than 12,000 years the dog has lived with humans as a hunting companion, protector and friend. A dog is one of the most popular pets in the world and has been referred to as ‘mans best friend’.",
      price: 25.99,
      image: "/public/doge.png"}
    ]

  books.each do |b|
    Book.create!( title: b[:title], author_id: b[:author_id], description: b[:description], price: b[:price], book_cover: b[:image] )
    # books.first.book_cover.attach(io: File.open('seed_img/doge.png')
  end
end
