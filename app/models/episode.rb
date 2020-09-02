class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    # def average_appearance_rating
    #     total = self.appearances.sum {|a| a.rating}
    #     total_count = self.appearances.count
    #     total  / total_count
    # end

end
