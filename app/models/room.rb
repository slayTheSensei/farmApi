class Room < ApplicationRecord
  belongs_to :cultivator
  belongs_to :facility
end
