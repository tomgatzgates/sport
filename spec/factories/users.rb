FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "User#{n}" }
    sequence(:last_name) { |n| "Surname#{n}" }
    sequence(:email) { |n| "user#{n}@example.com" }
  end
end
