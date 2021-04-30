class Day < ApplicationRecord
  belongs_to :user
  has_one :album
end
