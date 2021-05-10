class Album < ApplicationRecord
  belongs_to :day
  has_many :songs

def self.album_array_to_json(albums)
  albums.map do |album|
      album.to_json
  end 
end

def to_json 
  {
      id: self.id,
      day_id: self.day_id,
      day: self.day,
      title: self.title,
      artist: self.artist,
      album_art: self.album_art,
      spotify_link: self.spotify_link,
      release_date: self.release_date,
      rating: self.rating,
      comment: self.comment,
      songs: self.songs
  }
end
end
