class Lighting < ApplicationRecord
  belongs_to :room
  belongs_to :light_model
end
