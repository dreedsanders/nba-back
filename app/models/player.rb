class Player < ApplicationRecord
    belongs_to :team
    has_many :games

    def careeraverage
        #return average of all game stats
    end

    def careerhigh
        #return career high game, season stats, highs by category
    end



end
