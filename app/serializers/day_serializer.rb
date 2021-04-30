class DaySerializer < ActiveModel::Serializer
  attributes :date, :note, :user_id
  belongs_to :user
  has_one :album
end
