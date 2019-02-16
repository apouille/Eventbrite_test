
require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

3.times do
User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
	description: Faker::Friends.quote, 
	email: "#{Faker::Name.last_name}@yopmail.com",
	password: "coucoucou"
	)
end

3.times do
Event.create!(
  title: Faker::Lorem.words,
	description: "#{Faker::OnePiece.quote}", 
	start_date: Faker::Date.forward(30),
	duration: 5 * rand(1..120),
	price: rand(1..1000),
	location: Faker::OnePiece.location,
	administrator: User.all.sample
	)
end

3.times do
Attendance.create!(
	attendee: User.all.sample, 
	event: Event.all.sample,
	stripe_customer_id: Faker::Number.number(10)
	)
end