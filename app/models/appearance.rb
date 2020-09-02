class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest
    validates_numericality_of :rating, greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "must be between 1 and 5"
    validates_uniqueness_of :guest_id, scope: :episode_id, message: "has already been cast in this episode."
end
