class Book < ApplicationRecord
  has_one_attached :avatar
  belongs_to :author
  accepts_nested_attributes_for :author
  has_many :sales
  has_many :users, through: :sales
end
