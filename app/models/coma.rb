class Coma < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one_attached :image

  validates :image, presence: true
end
