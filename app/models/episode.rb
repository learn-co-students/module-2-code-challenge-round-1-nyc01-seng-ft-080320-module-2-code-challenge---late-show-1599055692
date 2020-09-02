class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

def rating_for_guest
    self.guests.each do |guest|
        guest.appearances.each do |appearance|
            appearance.rating
        end
    end
end


end
