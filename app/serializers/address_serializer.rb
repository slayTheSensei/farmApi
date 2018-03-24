class AddressSerializer < ActiveModel::Serializer
  attributes :id, :address, :address2, :zipcode
  has_one :city
end
