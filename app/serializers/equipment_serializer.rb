class EquipmentSerializer < ActiveModel::Serializer
  attributes :id, :type, :model, :isOn
  has_one :room
end
