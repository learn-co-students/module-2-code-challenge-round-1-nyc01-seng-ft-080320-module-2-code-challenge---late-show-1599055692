class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating 
        self.appearances.reduce(0) {|sum, appearance| sum + appearance.rating} / self.appearances.count
    end 
end
