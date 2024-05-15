# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

puts "creating new articles!"
testOne = Article.create(title: Faker::Hipster.word, content: Faker::Quote.famous_last_words)
puts "1!"
testTwo = Article.create(title: Faker::Hipster.word, content: Faker::Quote.famous_last_words)
puts "2!"
testThree = Article.create(title: Faker::Hipster.word, content: Faker::Quote.famous_last_words)
puts "3!"
puts "Done!"
