class Game < ApplicationRecord
    has_many :teams
    has_many :players

    def myteams
    end

    def myplayers 
    end

    def mystats
    end


end
