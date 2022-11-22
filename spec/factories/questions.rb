FactoryBot.define do
  factory :question do
    user
    title { Faker::Lorem.sentence(word_count: 4) }
    description { Faker::Lorem.sentence(word_count: 20) }
  end
end
