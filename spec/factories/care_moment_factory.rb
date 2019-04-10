FactoryBot.define do
  factory :care_moment do
    code   { 'weed' }
    points { 2 }
    date   { Date.today }
  end
end
