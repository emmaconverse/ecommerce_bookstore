15.times do
  User.create ({
    name: Faker::Name.name,
    email: "#{SecureRandom.hex(3)}_#{Faker::Internet.email}",
    password: SecureRandom.hex(10),
    admin: false,
    author: true
  })
end

15.times do
  User.create ({
    name: Faker::Name.name,
    email: "#{SecureRandom.hex(3)}_#{Faker::Internet.email}",
    password: SecureRandom.hex(10),
    admin: false,
    author: false
  })
end

50.times do
  Book.create ({
    title: Faker::Book.title,
    description: Faker::HarryPotter.quote,
    price: rand(5..20),
    author: User.where(author:true).sample,
    # book_cover: Faker::Placeholdit.image
  })
end
# books = Book.all

# books.each do |book|
#   book.book_cover.attach(io: File.open(Rails.root.join('public/doge.png')), filename:"doge.png")
# end
