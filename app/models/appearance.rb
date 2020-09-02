class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates_numericality_of :rating, greater_than: 0, less_than: 6
    validates_uniqueness_of :guest, scope: :episode
end
