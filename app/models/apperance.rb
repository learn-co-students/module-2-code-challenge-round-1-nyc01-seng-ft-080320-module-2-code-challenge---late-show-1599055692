class Apperance < ApplicationRecord
    belongs_to :guest 
    belongs_to :episode

    validates :rating, numericality: {less_than_or_equal_to: 5, greater_than_or_equal_to: 1}
    validates :guest_id, uniqueness: { scope: :episode_id, message: "A Guest can only appear on a given Episode once"}
end
