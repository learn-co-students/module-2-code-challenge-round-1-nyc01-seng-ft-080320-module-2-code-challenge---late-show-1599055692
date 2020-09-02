class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def show_rating
        self.appearances.sort_by { |a| -a.rating }
    end
end
