class OverwatchCharacter < ApplicationRecord
  belongs_to :overwatch_class
  validates :name, presence: true
  validates :difficulty, presence: true
  validates :image, presence: true
  validates :description, presence: true
end
