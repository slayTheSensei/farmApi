class RoomSerializer < ActiveModel::Serializer
  attributes :id, :size, :unit, :humidity, :temperature, :air_quality, :luman, :sensors
  has_one :cultivator
  has_one :facility
  has_one :user, through: :cultivator
end
