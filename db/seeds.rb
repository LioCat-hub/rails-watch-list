# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'
require 'json'

url = 'https://tmdb.lewagon.com/movie/top_rated'
movies = JSON.parse(URI.open(url).read)['results']

movies.each do |movie|
  Movie.create!(
    title: movie['title'],
    overview: movie['overview'],
    poster_url: "https://image.tmdb.org/t/p/original#{movie['poster_path']}",
    rating: movie['vote_average']
  )
end

Movie.create!(
  title: 'Wonder Woman 1984',
  overview: 'Wonder Woman comes into conflict with the Soviet Union...',
  poster_url: 'https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg',
  rating: 6.9
)

Movie.create!(
  title: 'The Shawshank Redemption',
  overview: 'Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison.',
  poster_url: 'https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg',
  rating: 8.7
)

Movie.create!(
  title: 'Titanic',
  overview: '101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.',
  poster_url: 'https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg',
  rating: 7.9
)

Movie.create!(
  title: 'Oceans Eight',
  overview: 'Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.',
  poster_url: 'https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg',
  rating: 7.0
)

Movie.create!(
  title: 'Inception',
  overview: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.',
  poster_url: 'https://image.tmdb.org/t/p/original/r4Hpc9DGGsRrD7ZP8Ih7VxHqP9d.jpg',
  rating: 8.8
)

Movie.create!(
  title: 'The Dark Knight',
  overview: 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.',
  poster_url: 'https://image.tmdb.org/t/p/original/qJ2tW4h0nF9L7vWz0uJ0cf5m62r6.jpg',
  rating: 9.0
)

Movie.create!(
  title: 'Forrest Gump',
  overview: 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal, and other historical events unfold from the perspective of an Alabama man with an extraordinary low IQ.',
  poster_url: 'https://image.tmdb.org/t/p/original/wD2Di7KQmHpm8N8eW5gXbYtVQJz.jpg',
  rating: 8.8
)

Movie.create!(
  title: 'The Matrix',
  overview: 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
  poster_url: 'https://image.tmdb.org/t/p/original/mx1Pq4t1QwK7wM5V9jYZ2h1duVd.jpg',
  rating: 8.7
)

Movie.create!(
  title: 'The Godfather',
  overview: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
  poster_url: 'https://image.tmdb.org/t/p/original/pgWf1Xz0M8zFqM9vHe9J13w1l5G.jpg',
  rating: 9.2
)

Movie.create!(
  title: 'Interstellar',
  overview: 'A team of explorers travel through a wormhole in space in an attempt to ensure humanitys survival.',
  poster_url: 'https://image.tmdb.org/t/p/original/9bfxW7oN0m8g0F6q7gkIu0aXyYF.jpg',
  rating: 8.6
)

Movie.create!(
  title: 'Avatar',
  overview: 'A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.',
  poster_url: 'https://image.tmdb.org/t/p/original/a4kZX3h2e0t3JlK4qluD8x9l1zq.jpg',
  rating: 7.8
)
