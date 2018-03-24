class Sensor < ApplicationRecord
  belongs_to :room
  has_many :temperature
  has_many :humidity
  has_many :air_quality
  has_many :luman
end
