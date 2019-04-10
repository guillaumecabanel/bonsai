FactoryBot.define do
  factory :user do
    password    { 'password' }
    nickname    { 'Guillaume' }
    level       { 1 }
    care_points { 15 }

    sequence(:email) { |index| "user#{index}@example.com" }
  end
end
