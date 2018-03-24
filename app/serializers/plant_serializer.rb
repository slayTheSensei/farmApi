class PlantSerializer < ActiveModel::Serializer
  attributes :id, :tag
  has_one :room
  has_one :strain
  has_one :phase
end
