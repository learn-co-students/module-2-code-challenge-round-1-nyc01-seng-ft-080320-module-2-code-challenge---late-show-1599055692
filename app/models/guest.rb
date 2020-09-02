class Guest < ApplicationRecord
    has_many :appearances, dependent: :destroy
    has_many :episodes, through: :appearances

    def sorted_appearances
        self.appearances.sort_by{|appr| appr.rating}.reverse
    end

end
