require 'factory_girl'

FactoryGirl.define do
  factory :role do
    title "user"
  end

  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end
end
