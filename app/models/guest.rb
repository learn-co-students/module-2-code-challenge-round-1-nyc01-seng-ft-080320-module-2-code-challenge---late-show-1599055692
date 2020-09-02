class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, -> { distinct }, through: :appearances

end
