class Book < ApplicationRecord
  belongs_to :author
  accepts_nested_attributes_for :author
  has_many :sales
  has_many :users, through: :sales

end
