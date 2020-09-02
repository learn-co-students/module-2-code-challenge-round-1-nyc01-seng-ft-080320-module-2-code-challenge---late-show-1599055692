class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def episodes_sorted
        self.episodes.sort_by{|e|e.average_rating}
    end

end
