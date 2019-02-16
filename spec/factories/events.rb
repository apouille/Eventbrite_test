FactoryBot.define do
  factory :event do
    start_date { Faker::Date.between(Date.today, 1.year.from_now) }
    duration { rand(1..50) * 5 }
    title { Faker::Book.title }
    description { Faker::Lorem.paragraph(2) }
    price { rand(1..1000) }
    location { Faker::Address.full_address }
  end
end
