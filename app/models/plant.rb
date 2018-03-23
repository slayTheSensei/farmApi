class Plant < ApplicationRecord
  belongs_to :room
  belongs_to :strain
  belongs_to :phase
end
