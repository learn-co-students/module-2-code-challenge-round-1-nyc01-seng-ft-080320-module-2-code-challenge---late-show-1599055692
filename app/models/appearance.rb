class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rating, inclusion: { in: (1..5), message: "must be between 1 and 5" }
  validate :guest_appears_once

  def guest_appears_once
    if Appearance.find_by(guest: self.guest_id, episode: self.episode_id) != nil
      errors.add(:guest, "can't be on the same episode twice")
    end
  end
end
