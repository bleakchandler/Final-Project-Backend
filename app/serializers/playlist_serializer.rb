class PlaylistSerializer < ActiveModel::Serializer
  attributes :spotify_link, :title, :user_id
  belongs_to :user
end
