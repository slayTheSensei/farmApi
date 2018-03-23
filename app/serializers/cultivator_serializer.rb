class CultivatorSerializer < ActiveModel::Serializer
  attributes :id, :company, :username, :profile_img, :phone_number
  has_one :user
end
