# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'cleaning out the database...'
Task.destroy_all

puts 'start creating'
10.times do
  Task.create!(title: Faker::Restaurant.name, details: Faker::JapaneseMedia::OnePiece.sea)
end

puts "..crated #{Task.count} tasks"
