class Card < ApplicationRecord

  def self.search(search)
    where('name ILIKE ?', "%#{search}%")
    where('text ILIKE ?', "%#{search}%")
  end
end
