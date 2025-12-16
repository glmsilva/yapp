class Room < ApplicationRecord
  validates :slug_name, presence: true
  validates :deck_type, presence: true
  enum :status, { waiting: 0, voting: 1, revealed: 2 }

  has_many :players, dependent: :destroy
end
