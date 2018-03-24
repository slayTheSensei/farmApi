class Room < ApplicationRecord
  belongs_to :cultivator
  belongs_to :facility
  has_many :sensors
  has_many :humidity, through: :sensors
  has_many :temperature, through: :sensors
  has_many :air_quality, through: :sensors
  has_many :luman, through: :sensors
end
