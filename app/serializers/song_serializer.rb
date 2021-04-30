class SongSerializer < ActiveModel::Serializer
  attributes :title, :artist, :rating, :comment, :album_id
  belongs_to :album
end
