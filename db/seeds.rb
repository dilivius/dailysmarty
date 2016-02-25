puts "Starting to run seeds file..."

100.times do |topic|
	Topic.create!(title: "My Title #{topic}")
end

puts "100 Topics created"

User.create!(
		email: "admin@test.com",
		password: "asdfasdf",
		password_confirmation: "asdfasdf",
		first_name: "Jon",
		last_name: "Snow",
		username: "wallwatcher",
		role: "admin"
	)

puts "Admin user created"

User.create!(
		email: "student@test.com",
		password: "asdfasdf",
		password_confirmation: "asdfasdf",
		first_name: "Jon",
		last_name: "Snow",
		username: "youngwallwatcher",
		role: "student"
	)

puts "Student user created"