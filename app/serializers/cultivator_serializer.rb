class CultivatorSerializer < ActiveModel::Serializer
  attributes :id, :company, :username, :profile_img, :phone_number, :rooms
  has_one :user
  has_many :rooms
end
