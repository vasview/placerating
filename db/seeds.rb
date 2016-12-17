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
	email = name + '@example.com'
	password = '123456'
	User.create(name: username, email: email, role_id: '1', active: true, password: password, password_confirmation: password)
end 
User.create(name: 'admin', email: 'admin@example.com'. role_id: '2', active: true, password: '123456', password_confirmation: '123456')

#create Categories

categories = ['Restaurants', 'Cafes', 'Pubs', 'Taverns']

categoies.each do |name|
	Category.create(name: name)
end	