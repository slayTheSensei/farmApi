class RoomSerializer < ActiveModel::Serializer
  attributes :id, :size, :unit
  has_one :cultivator
  has_one :facility
end
