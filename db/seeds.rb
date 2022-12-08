# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding begins here..."

# Dev.destroy_all
# Article.destroy_all
# Profile.destroy_all
# Subscriber.destroy_all

# # devs seed data
10.times do
       Dev.create!(email:Faker::Internet.email,password_digest:Faker::Internet.password,username:Faker::Internet.username,fname:Faker::Name.first_name,lname:Faker::Name.last_name)
end

Article.create!([
  {title:Faker::Book.title,content:Faker::Lorem.sentence(word_count: 30) ,minutes_to_read:4,featured_image:Faker::LoremFlickr.image(size: "50x60"),likes:45,dev_id:5,is_free:false},
  {title:Faker::Book.title,content:Faker::Lorem.sentence(word_count: 30),minutes_to_read:3,featured_image:Faker::LoremFlickr.image(size: "50x60"),likes:23,dev_id:6,is_free:true},
  {title:Faker::Book.title,content:Faker::Lorem.sentence(word_count: 30),minutes_to_read:6,featured_image:Faker::LoremFlickr.image(size: "50x60"),likes:45,dev_id:7,is_free:false},
  {title:Faker::Book.title,content:Faker::Lorem.sentence(word_count: 30),minutes_to_read:2,featured_image:Faker::LoremFlickr.image(size: "50x60"),likes:67,dev_id:8,is_free:true},
  {title:Faker::Book.title,content:Faker::Lorem.sentence(word_count: 30),minutes_to_read:4,featured_image:Faker::LoremFlickr.image(size: "50x60"),likes:4,dev_id:9,is_free:true}])

Profile.create([
  {bio:Faker::Lorem.sentence(word_count: 30), image_url:Faker::LoremFlickr.image(size: "50x60"), linkedin:"https://linkedin.com/faker-ruby/james", github:"https://github.com/faker-ruby/james", twitter:"https://twitter.com/faker-ruby/james", dev_id:6},
  {bio:Faker::Lorem.sentence(word_count: 10), image_url:Faker::LoremFlickr.image(size: "50x60"), linkedin:"https://linkedin.com/faker-ruby/molly", github:"https://github.com/faker-ruby/molly", twitter:"https://twitter.com/faker-ruby/molly", dev_id:10},
  {bio:Faker::Lorem.sentence(word_count: 10), image_url:Faker::LoremFlickr.image(size: "50x60"), linkedin:"https://linkedin.com/faker-ruby/reen", github:"https://github.com/faker-ruby/reen", twitter:"https://twitter.com/faker-ruby/reen", dev_id:13},
  {bio:Faker::Lorem.sentence(word_count: 10), image_url:Faker::LoremFlickr.image(size: "50x60"), linkedin:"https://linkedin.com/faker-ruby/shiro", github:"https://github.com/faker-ruby/reen", twitter:"https://twitter.com/faker-ruby/reen", dev_id:12},
  {bio:Faker::Lorem.sentence(word_count: 10), image_url:Faker::LoremFlickr.image(size: "50x60"), linkedin:"https://linkedin.com/faker-ruby/njenga", github:"https://github.com/faker-ruby/njenga", twitter:"https://twitter.com/faker-ruby/njenga", dev_id:11}
  
])

# Add subscribers data


Subscriber.create! ([
    {username:Faker::Internet.username,password_digest:Faker::Internet.password,email:Faker::Internet.email},
    {username:Faker::Internet.username,password_digest:Faker::Internet.password,email:Faker::Internet.email},
    {username:Faker::Internet.username,password_digest:Faker::Internet.password,email:Faker::Internet.email},
    {username:Faker::Internet.username,password_digest:Faker::Internet.password,email:Faker::Internet.email},
    {username:"Murife",password_digest:"Murife123",email:Faker::Internet.email}

  ])
  


puts "... Seeding ends here"