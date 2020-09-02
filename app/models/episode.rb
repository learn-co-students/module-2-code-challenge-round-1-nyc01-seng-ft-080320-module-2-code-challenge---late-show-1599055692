class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


    def average_rating
        if self.appearances.count != 0
        (self.appearances.sum{|a|a.rating} / self.appearances.count).to_f
        else
            0
        end
    end
end
