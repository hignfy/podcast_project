# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Create a user for associating with podcasts
user = User.create!(
  email: 'example@example.com',
  password: 'password',
  password_confirmation: 'password'
)

Podcast.create!(
  title: 'Episode 1. Vienna, Most Livable?',
  description: 'Why is Vienna called the most livable city?',
  published_at: Date.today,
  transcript: 'This is the transcript for the introduction episode.',
  user: user  # Make sure you associate the podcast with the user
)

puts 'Seeds created successfully.'
