class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def rating_appearance
        self.appearances.each do |appearance|
            appearance
        end
    end
end
