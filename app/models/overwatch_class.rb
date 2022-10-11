class OverwatchClass < ApplicationRecord
  has_many :overwatch_characters
  validates :name, presence: true
end
