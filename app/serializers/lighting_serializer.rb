class LightingSerializer < ActiveModel::Serializer
  attributes :id, :area
  has_one :room
  has_one :light_model
end
