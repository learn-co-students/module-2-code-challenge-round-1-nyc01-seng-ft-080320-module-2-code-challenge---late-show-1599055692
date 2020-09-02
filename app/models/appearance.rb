class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, inclusion: 1..5
    validate :one_guest_only, on: :create

    def one_guest_only
        if episode.guests.include?(guest)
            errors.add(:guest, "is already a guest on this episode.")
        end
    end

end