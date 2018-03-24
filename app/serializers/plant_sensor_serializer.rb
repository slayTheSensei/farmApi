class PlantSensorSerializer < ActiveModel::Serializer
  attributes :id, :ph, :hydration
  has_one :plant
end
