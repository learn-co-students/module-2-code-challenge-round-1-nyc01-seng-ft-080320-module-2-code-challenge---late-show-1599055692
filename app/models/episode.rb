class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        total_rating = self.appearances.sum {|appr| appr.rating}
        total_appearances = self.appearances.count.to_f
        total_rating/total_appearances
    end

end
