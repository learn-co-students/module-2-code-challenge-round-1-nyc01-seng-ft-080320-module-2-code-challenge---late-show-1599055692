class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances 


    def average_rating 
        total = self.appearances.map{|appearance| appearance.rating}
        final = (total.sum/total.size) 
        final.to_f
    end
end
