class Room < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  has_many :comas
end
