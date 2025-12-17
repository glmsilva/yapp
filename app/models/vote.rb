class Vote < ApplicationRecord
  belongs_to :player
  validates :value, presence: true
end
