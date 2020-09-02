class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest
    validates_inclusion_of :rating, :in => 1..5
end
