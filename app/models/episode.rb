class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        (self.appearances.reduce(0.0) { |avg, a| avg + a.rating } / self.appearances.count).round(1)
    end
end
