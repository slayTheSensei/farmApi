class FacilitySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :address
end
