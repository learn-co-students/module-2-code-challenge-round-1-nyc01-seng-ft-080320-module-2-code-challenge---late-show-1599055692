class Episode < ApplicationRecord
    has_many :apperances
    has_many :guests, through: :apperances

    def average_rating

        ratings= [] 
        self.apperances.each do |apperance|
            ratings << apperance.rating 
        end 
        ratings.inject{ |sum, el| sum + el }.to_f / ratings.size
    end
end
