FactoryBot.define do
  factory :plant do
    age_in_months { 12 }
    size          { 'medium' }
    room          { 'living-room' }
    photo_url     { 'https://i.pinimg.com/originals/12/9a/77/129a7733bb7a05cb0aea95f62b1aab4b.jpg' }
    
    sequence(:name) { |index| "plant#index" }
  end
end
