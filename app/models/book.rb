class Book < ApplicationRecord
  belongs_to :author
  has_many :sales
  has_many :users, through :sales
end
