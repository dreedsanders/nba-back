class Game < ApplicationRecord
    has_many :teams
    has_many :players
    validates :home_team :away_team :final_score presence: true

    def myteams
    end

    def myplayers 
    end

    def mystats
    end


end
