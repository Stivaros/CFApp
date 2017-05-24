FactoryGirl.define do

  factory :comment do
    positives "Good"
    negatives "Bad"
    rating 3
  end

  factory :product do
    name "Test Product"
    description "This is a fake description"
    image_url "https://domain.tld/path/asset.extension"
    tier "Gold"
    price 150
  end

end