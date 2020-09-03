class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def rating_sort
        self.appearances.sort_by do |appearance|
            appearance.rating
        end
    end
end
