class UserSerializer < ActiveModel::Serializer
    attributes :name, :username, :password
    has_many :playlists
    has_many :days
  end
  