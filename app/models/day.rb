class Day < ApplicationRecord
  belongs_to :user
  has_one :album

def self.day_array_to_json(days)
  days.map do |day|
      day.to_json
  end 
end

def to_json 
  {
      id: self.id,
      date: self.date,
      note: self.note,
      user_id: self.user_id,
      user: self.user,
      album: self.album,
  }
end 
end