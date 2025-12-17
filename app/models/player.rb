class Player < ApplicationRecord
  belongs_to :room
  has_one :vote, dependent: :destroy


  enum :role, { moderator: 0, participant: 1, observer: 2 }

  validates :name, presence: true
end
