class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def ordered_appearances
        list_appearances = self.appearances

        list_appearances.sort_by do |appearance|
            appearance.episode.avg_rating
        end.reverse
    end
end
