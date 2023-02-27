class Team < ApplicationRecord
    has_many :players
    has_many :games
    has_many :playoffbrackets


    def roster
=begin
players = Players.map{|player| player.team.name = self.name}
return players
=end
    end

    def record
        #return wins vs losses
    end

    def myplayoffbrackets
        #return list of users who have this team in their playoff bracket
    end




end
