# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
user1 = User.create(name: Faker::Name.first_name, username: "hello", password: "hello")
user2 = User.create(name: Faker::Name.first_name, username: "test", password: "test")

#Days
day1 = Day.create(note: "Day 1", user_id: 2, date: "2021-04-02")
day2 = Day.create(note: "Day 2", user_id: 1, date: "2021-06-02")

# Albums
album1 = Album.create(title: "The Fame Monster", artist: "Lady Gaga", rating: 5, comment: "Amazing album!", day_id: 1)
album2 = Album.create(title: "Chromatica", artist: "Lady Gaga", rating: 5, comment: "Incredible album!", day_id: 2)

# Songs
song1 = Song.create(title: "So Happy I Could Die", artist: "Lady Gaga", rating: 5, comment: "Amazing album!", album_id: 1)
song2 = Song.create(title: "Replay", artist: "Lady Gaga", rating: 5, comment: "Incredible album!", album_id: 2)

#Playlists
playlist1 = Playlist.create(title: "Playlist 1", user_id: 1)
playlist2 = Playlist.create(title: "Playlist 2", user_id: 2)
