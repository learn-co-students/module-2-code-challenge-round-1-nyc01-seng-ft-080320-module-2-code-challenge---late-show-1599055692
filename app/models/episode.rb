class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, -> { distinct }, through: :appearances

    def avg_rating
        self.appearances.reduce(0.0) {|sum, a| sum + a.rating} / self.appearances.length
    end
end
