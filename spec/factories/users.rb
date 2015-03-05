# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name 'John'
    last_name 'Doe'
    email { Faker::Internet.email }
    password 'password123'
  end
end
