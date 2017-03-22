class Card < ApplicationRecord
  validates :multiverse_index, presence: true, uniqueness: true
end
