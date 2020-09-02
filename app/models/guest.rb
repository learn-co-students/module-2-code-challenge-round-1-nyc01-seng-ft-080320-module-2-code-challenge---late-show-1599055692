class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def sorted_appearances
        self.appearances.sort {|a, b| a.rating <=> b.rating }.reverse
    end 
end
