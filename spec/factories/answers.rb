FactoryBot.define do
  factory :answer do
    content { Faker::Lorem.sentence(word_count: 20) }
  end
end
