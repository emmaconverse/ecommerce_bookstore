require "rails_helper"

RSpec.describe "Authors", type: :system do
  it "should not be able to see authors withoput signing in" do
    first_book = create(:book)
    second_book = create(:book)

    visit "/authors"

    expect(page).to have_text("You need to sign in or sign up before continuing.")
  end


  # it "as a signed-in user, has an index page of all authors" do
  #   first_book = create(:book)
  #   second_book = create(:book)

  #   sign_in User.first

  #   visit "/authors"

  #   expect(page).to have_text(first_book.author.name)
  #   expect(page).to have_text(second_book.author.name)
  # end

  # it "as a signed-in user, has a show page of one author at a time" do
  #   first_book = create(:book)
  #   second_book = create(:book)

  #   sign_in User.first

  #   visit "/authors/2"

  #   expect(page).to have_text(second_book.author.name)
  #   expect(page).to have_no_text(first_book.author.name)
  # end

end
