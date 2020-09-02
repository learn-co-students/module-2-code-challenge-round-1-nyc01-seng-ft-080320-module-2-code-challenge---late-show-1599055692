class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        total_rating= 0.0
        self.appearances.each do |appearance|
           total_rating += appearance.rating
        end
        (total_rating / appearances.count).round(2)
    end
end
