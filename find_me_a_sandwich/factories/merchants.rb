FactoryGirl.define do
  factory :merchant do
    sequence(:name) { |i| "#{Faker::Company.name} #{i}" }
    description { Faker::Lorem.paragraph }
    phone { Faker::PhoneNumber.phone_number }
    association :location

    trait :with_menus do
      after(:create) do |merchant|
        create(:menu, :with_items, name: "Lunch", merchant: merchant)
        create(:menu, :with_items, name: "Dinner", merchant: merchant)
      end
    end
  end
end
