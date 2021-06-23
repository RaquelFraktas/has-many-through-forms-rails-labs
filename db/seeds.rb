# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Post.destroy_all

5.times do
  @user = User.create(username: Faker::Internet.username, email: Faker::Internet.email)
  3.times do
    @post = Post.create(title: Faker::Book.title, content: Faker::Lorem.sentence(word_count: 5))
    @user.posts << @post
  end
end

puts "data has been seeded"

