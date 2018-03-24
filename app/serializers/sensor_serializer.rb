class SensorSerializer < ActiveModel::Serializer
  attributes :id, :humidities, :temperatures
  has_one :room
end
