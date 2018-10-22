class Book < ApplicationRecord
  has_one_attached :book_cover

  belongs_to :author, class_name: "User"

  # accepts_nested_attributes_for :author, class_name: "User"

  has_many :sales
  has_many :users, through: :sales

  def stripe_amount
    (price * 100).to_i
  end

end
