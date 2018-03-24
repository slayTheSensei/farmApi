# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :cultivators, :rooms, :sensors, :humidities, :temperatures, :air_qualities, :lumans
end
