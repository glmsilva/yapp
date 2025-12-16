class Player < ApplicationRecord
  belongs_to :room

  enum :role, { moderator: 0, participant: 1, observer: 2 }
end
