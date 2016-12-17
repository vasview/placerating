# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create User roles

user = Role.create(name: "user", description: "User of the website")
admin = Role.create(name: "admin", description: "Administrator of the system" )

# create Users

name = ['user', 'test', 'bigmug', 'gamlet']
name.each do |username|
	email = username + '@example.com'
	password = '123456'
	User.create(name: username, email: email, role_id: '1', active: true, password: password, password_confirmation: password)
end 
role = Role.where(name: 'admin')
User.create(name: 'admin', email: 'admin@example.com', role_id: '2', active: true, password: '123456', password_confirmation: '123456')

# create Categories

categories = ['Restaurants', 'Cafes', 'Pubs', 'Taverns']

categories.each do |name|
	Category.create(name: name)
end	

# Create Places

40.times do
    Place.create( title:   	  Faker::Company.name,
                description:  Faker::Lorem.sentence,
                category_id:  rand(1..categories.size))
end
