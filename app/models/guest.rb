class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def ratings_low_to_high
        self.appearances.sort_by do |appearance|
            appearance.rating
        end
    end

    def ratings_high_to_low
        self.ratings_low_to_high.reverse
    end
end
