class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def only_ratings
    self.appearances.map do |appearance|
      appearance.rating
    end
  end

  def average_rating
    self.only_ratings.sum.to_f / self.only_ratings.length.to_f
  end
end
