class Room < ApplicationRecord
  validates :slug_name, presence: true
  validates :deck_type, presence: true
  enum :status, { waiting: 0, voting: 1, revealed: 2 }

  has_many :players, dependent: :destroy
  has_many :votes, through: :players

  before_create :set_uuid
  before_validation :generate_slug_name, on: :create


  def to_param
    slug_name
  end

  private
  def generate_slug_name
    self.slug_name ||= SecureRandom.hex(4)
  end

  def set_uuid
    self.id = SecureRandom.uuid
  end
end
