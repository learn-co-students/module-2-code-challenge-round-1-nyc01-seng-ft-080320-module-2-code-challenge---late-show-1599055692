class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        sum_total = self.appearances.sum { |appearance| appearance.rating }
        total = self.appearances.count
        (sum_total/total.to_f).round(2)
    end

end
