class Guest < ApplicationRecord
    has_many :apperances
    has_many :episodes, through: :apperances

    def sort_apperances
        apperances_hash = {}
        self.apperances.each do |apperance| 
        apperances_hash[apperance.episode.date] = apperance.rating 
        end
        apperances_hash.sort_by{ |k,v| v}.reverse
    end
end
