FactoryBot.define do
  factory :attendance do
    stripe_id { Faker::Internet.password }
  end
end
