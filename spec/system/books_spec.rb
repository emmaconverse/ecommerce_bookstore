require "rails_helper"

RSpec.describe "Books", type: :system do
  it "has an index page of all books" do
    first_book = create(:book)
    second_book = create(:book)

    visit "/"

    expect(page).to have_text(first_book.title)
    expect(page).to have_text(second_book.title)
  end

  it "has a show page of one book at a time with a buy button" do
    first_book = create(:book)
    second_book = create(:book)

    visit "/books/2"

    expect(page).to have_text(second_book.title)
    expect(page).to have_no_text(first_book.title)
    expect(page).to have_text("Buy This Book")
  end

end
