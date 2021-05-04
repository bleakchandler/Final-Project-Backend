class AlbumSerializer < ActiveModel::Serializer
  attributes :title, :artist, :album_art, :rating, :comment, :day_id, :release_date, :spotify_link
  belongs_to :day
  has_many :songs
end
