class SensorSerializer < ActiveModel::Serializer
  attributes :id
  has_one :room
end
