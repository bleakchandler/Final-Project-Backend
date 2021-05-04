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
day1 = Day.create(note: "Day 1", user_id: 1, date: "2021-05-28")
day2 = Day.create(note: "Day 2", user_id: 1, date: "2021-05-16")

day3 = Day.create(note: "Day 3", user_id: 1, date: "2021-05-03")
day4 = Day.create(note: "Day 4", user_id: 1, date: "2021-05-12")

day5 = Day.create(note: "Day 5", user_id: 1, date: "2021-05-31")
day6 = Day.create(note: "Day 6", user_id: 1, date: "2021-05-08")

# Albums
album1 = Album.create(title: "The Fame Monster", artist: "Lady Gaga", rating: 5, comment: "Amazing album!", day_id: 1, album_art: 'https://upload.wikimedia.org/wikipedia/en/4/45/The_Fame_Monster.png', release_date: "2009", spotify_link: "https://open.spotify.com/album/6rePArBMb5nLWEaY9aQqL4?si=005e0478046e4618")
album2 = Album.create(title: "Chromatica", artist: "Lady Gaga", rating: 5, comment: "Incredible album!", day_id: 2, album_art: 'https://assets.vogue.com/photos/5e8b9a93cf399a0008fd2eec/master/pass/LG6_COVER_DIGITAL2%202.jpg', release_date: "2020", spotify_link: "https://open.spotify.com/album/05c49JgPmL4Uz2ZeqRx5SP?si=be076bd15f9b4a82")

album3 = Album.create(title: "Number 1 Angel", artist: "Charli XCX", rating: 5, comment: "Amazing album!", day_id: 3, album_art: 'https://upload.wikimedia.org/wikipedia/en/9/99/Charli_XCX_-_Number_1_Angel.png', release_date: "2017", spotify_link: "https://open.spotify.com/album/37rI2gAtakAmSFtbIE9THq?si=a7ca6b1b279d4531")

album4 = Album.create(title: "4", artist: "Beyoncé", rating: 5, comment: "Incredible album!", day_id: 4, album_art: 'https://images-na.ssl-images-amazon.com/images/I/71uR2KhRrZL._SL1066_.jpg', release_date: "2011", spotify_link: "https://open.spotify.com/album/1gIC63gC3B7o7FfpPACZQJ?si=QefKrNYgTVehqZoZtgMIIg")

album5 = Album.create(title: "OIL OF EVERY PEARL'S UN-INSIDES", artist: "SOPHIE", rating: 5, comment: "Amazing album!", day_id: 5, album_art: 'https://upload.wikimedia.org/wikipedia/en/d/d0/Sophie_-_Oil_of_Every_Pearl%27s_Un-Insides.png', release_date: "2019", spotify_link: "https://open.spotify.com/album/4z3YbEkKWwiIMSJTWUQbTH?si=isopF2uUStCf5xj3N4jw7w")

album6 = Album.create(title: "Confessions on a Dancefloor", artist: "Madonna", rating: 5, comment: "Incredible album!", day_id: 6, album_art: 'https://images-na.ssl-images-amazon.com/images/I/71D5S3PHRmL._SL1425_.jpg', release_date: "2005", spotify_link: "https://open.spotify.com/album/1hg0pQJLE9dzfT1kgZtDPr?si=tb15CU0gRN6pMkY8GkAvig")

# Songs
song1 = Song.create(title: "So Happy I Could Die", artist: "Lady Gaga", rating: 5, comment: "Amazing album!", album_id: 1)
song2 = Song.create(title: "Replay", artist: "Lady Gaga", rating: 5, comment: "Incredible album!", album_id: 2)

#Playlists
playlist1 = Playlist.create(title: "Playlist 1", user_id: 1)
playlist2 = Playlist.create(title: "Playlist 2", user_id: 2)
