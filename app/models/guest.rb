class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def episodes_sorted
        self.epsiodes.sort_by!{|e|e.rating}
    end
end
