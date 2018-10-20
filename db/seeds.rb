  authors = [
    {name: "Sir Remy"},
    {name: "Miss Dalek"},
    {name: "Penny Lane"},
    {name: "Zoe Hunts"},
    {name: "Lucy Pants"},
  ]

  # must create these users as authors in console for them to work in console/testing.

  authors.each do |author|
    Author.create!(name: author[:name])
  end

  books = [
    { title: "All About Dogs",
      description: "A dog is a mammal in the order Carnivora. Dogs were domesticated from wolves as recently as 15,000 years ago.",
      price: 15.99
    },
    { title: "Dogs Are Life",
      description: "It is estimated that for more than 12,000 years the dog has lived with humans as a hunting companion, protector and friend. A dog is one of the most popular pets in the world and has been referred to as ‘mans best friend’.",
      price: 25.99
    }
  ]

  books.each do |book_attrs|
    book = Book.new(book_attrs)
    book.author = Author.all.sample
    book.book_cover.attach(io: File.open(Rails.root.join('public/doge.png')), filename:"doge.png")
    book.save!
  end
