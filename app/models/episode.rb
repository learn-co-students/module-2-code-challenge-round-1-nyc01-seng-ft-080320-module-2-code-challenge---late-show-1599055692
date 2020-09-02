class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        self.appearances.sum {|appearance| appearance.rating} * 1.0 / self.appearances.length
    end
end
