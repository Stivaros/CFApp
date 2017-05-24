FactoryGirl.define do

  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "testpassword"
    admin false
  end
end