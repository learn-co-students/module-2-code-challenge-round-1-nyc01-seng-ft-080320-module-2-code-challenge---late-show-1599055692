class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    # def episodes_sorted
    #     self.episodes{|e|e.appearances}
    # end

    def guest_appearances
        self.episodes.appeara
    end
end
