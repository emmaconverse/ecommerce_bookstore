class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_one_attached :avatar

  has_many :books, foreign_key: :author_id

  has_one_attached :avatar
  # has_many :sales
  # has_many :purchased_books, through: :sales, source: :book

  has_many :sales
  has_many :purchased_books, through: :sales, class_name: "Book", foreign_key: :book_id
end
