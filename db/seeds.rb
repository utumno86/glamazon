# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file .env file.

30.times do
  i = Item.new
  i.name = Faker::Commerce.product_name
  i.short_description = Faker::Company.bs
  i.description = Faker::Lorem.paragraph
  i.price = Faker::Commerce.price
  i.remote_image_url = ("http://loremflickr.com/640/480/#{i.name.split.last.downcase}")
  i.save
end
