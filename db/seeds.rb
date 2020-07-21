# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
# TODO: Write a seed to insert 100 posts in the database
# db/seeds.rb
puts 'Creating 10 fake articles...'
10.times do
  article = Article.new(
    title: Faker::Lorem.sentences(number: 1, supplemental: true),
    content: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
  )
  article.save!
end
puts 'Finished!'