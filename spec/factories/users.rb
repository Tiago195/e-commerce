FactoryBot.define do
  factory :user do
    password = Faker::Number.number
    email { Faker::Internet.email }
    password { password }
    password_confirmation { password }
    name { Faker::Name.name }
    phone { Faker::PhoneNumber.phone_number }
  end
end
