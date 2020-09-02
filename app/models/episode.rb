class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        total_rating = self.appearances.sum {|appr| appr.rating}
        total_appearances = self.appearances.count.to_f
        avg_rating = (total_rating/total_appearances).round(2)
    end

    # Definitely not necessarily to match names...just match guests instead. See Apperance model.
    # def guest_names
    #     self.guests.map {|guest| guest.name}
    # end

end
