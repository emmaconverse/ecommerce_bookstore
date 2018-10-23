require 'faker'

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { "dalekdalek" }

    factory :author do
      author { true }
    end

    # for admin, default is fault so do not need to set, if true need to set it
    factory :admin do
      admin { true }
    end

  end
end
