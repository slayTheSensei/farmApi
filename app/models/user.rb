# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :cultivators
  has_many :rooms, through: :cultivators
  has_many :sensors, through: :rooms
  has_many :humidities, through: :sensors
  has_many :air_qualities, through: :sensors
  has_many :temperatures, through: :sensors
  has_many :lumans, through: :sensors
end
