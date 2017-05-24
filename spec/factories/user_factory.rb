FactoryGirl.define do
  factory :user do
    email "test@example.com"
    password "testpassword"
    admin false
  end
end