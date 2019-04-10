FactoryBot.define do
  factory :user do
    email       { 'email' }
    nickname    { 'John' }
    level       { 0 }
    care_points { 0 }
  end
end
