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
  email: 'emma@viennability.com',
  password: 'Viennabilitypassword',
  password_confirmation: 'Viennabilitypassword',
  admin: true
)

Podcast.create!(
  title: 'Episode 1. Vienna, Most Livable?',
  description: 'Why is Vienna called the most livable city?',
  published_at: Date.today,
  transcript: "In 2023, the city of Vienna once again came top in the Mercer Quality of Living Survey, the number one position it’s held since 2009.
    Maybe you saw a news article about it, and that’s why you clicked on this podcast.
    And so maybe you’re asking the question “what does Mercer define as livable?”, because I imagine that you think your city is great,
    it’s developing all the time, and you love living there, so why is Vienna so consistently top?
    Let’s start with definitions: livability is two parts: daily comforts; like green spaces, safe walkable areas, accessible grocery shops,
    restaurants and cafés: and overall factors like environmental quality, safety, healthcare and social security.
    What would a city that does all of that well look like to you? Is it where you live but just a bit better,
    or sort of a bland gray utopia? When I moved to Vienna nearly 10 years ago to study I assumed I would leave the second I finished,
    but after two years I realised that the city was great in pretty much every aspect compared to where I’d visited or lived before,
    and there was nowhere I could move to that was going to give me an overall better quality of life.
    I have been asked a lot why I decided to stay here because Vienna is not considered a cool destination like London or Berlin,
    where I’ve lived before; for younger tourists especially, Vienna seems pretty dull, a comment I've heard a lot.
    The real magic of Vienna’s livability, unsurprisingly, is living here. Life flows juuust a bit smoother than other cities I’ve lived in
    and the quality of life feels better, especially when I step back to think about it. So to answer the questions “why are you still here?” and
    “what does livability in a modern city actually mean?” I’m going to talk about my own experiences, plus speaking to friends, colleagues, and acquaintances
    to find out why they moved here, why they stayed here, or what they love most about the city they grew up in,
    although the Viennese are always their own harshest critics. This is Viennability.",
  user: user  # Make sure you associate the podcast with the user
)

puts 'Seeds created successfully.'
