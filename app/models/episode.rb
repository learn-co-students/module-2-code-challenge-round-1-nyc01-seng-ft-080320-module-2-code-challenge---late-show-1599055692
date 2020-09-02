class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


    def average_rating
        self.appearances.sum{|a|a.rating} / self.appearances.count
    end
end
