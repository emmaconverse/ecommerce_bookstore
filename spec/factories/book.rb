require 'faker'

FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    description { "Dogs are so cool." }
    price { rand(5..19) }
    author { create :author }
  end
end
