class RoomSettingSerializer < ActiveModel::Serializer
  attributes :id, :humidity, :temperature, :air_quality
  has_one :room
end
