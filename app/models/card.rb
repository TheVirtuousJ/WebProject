class Card < ApplicationRecord

  def self.search(search)
    where('name ILIKE ? OR text ILIKE ?', "%#{search}%", "%#{search}%")
  end
end
