class AlbumSerializer < ActiveModel::Serializer
  attributes :title, :artist, :rating, :comment, :day_id
  belongs_to :day
  has_many :songs
end
