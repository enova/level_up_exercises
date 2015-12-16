FactoryGirl.define do
  factory :location do
    street { Faker::Address.street_address }
    city   { Faker::Address.city }
    state  { Faker::Address.state_abbr }
    zip    "60606"
  end
end
