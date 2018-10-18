# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name: "Dalek Laserlights", email: "testadmin@testadmin.123", password: "testadmin123", admin: true)
Author.create!(name: "Remy Everygreen")

# ron_rash = User.create!(name: "Ron Rash", email: "ron@ron_rash.dev", password: "testing1")

books = [{ title: "All About Dogs", author_id: 1, description: "A dog is a mammal in the order Carnivora. Dogs were domesticated from wolves as recently as 15,000 years ago.", price: 15.99}, { title: "Dogs Are Life", description: "It is estimated that for more than 12,000 years the dog has lived with humans as a hunting companion, protector and friend. A dog is one of the most popular pets in the world and has been referred to as ‘mans best friend’.", author_id: 1, price: 25.99}]

books.each do |book|
  Book.create( title: book[:title], author_id: book[:author_id], description: book[:description], price: book[:price] )
  # books.first.avatar.attach(io: File.open('seed_img/doge.png')
end

# ron_rash.books << Book.all
