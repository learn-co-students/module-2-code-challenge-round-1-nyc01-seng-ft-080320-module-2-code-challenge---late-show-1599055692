class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def avg_rating
        self.appearances.reduce(0.0) do |total_rating, appearance|
            total_rating + appearance.rating
        end/self.appearances.count
    end
end
