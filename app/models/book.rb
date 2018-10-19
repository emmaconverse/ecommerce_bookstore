class Book < ApplicationRecord
  has_one_attached :book_cover
  belongs_to :author
  accepts_nested_attributes_for :author
  has_many :sales
  has_many :users, through: :sales
  def stripe_amount
    (price * 100).to_i
  end
end
