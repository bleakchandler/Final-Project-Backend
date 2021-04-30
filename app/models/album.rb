class Album < ApplicationRecord
  belongs_to :day
  has_many :songs
end
