class User < ApplicationRecord
    has_one :playoff_bracket

    def myteam
=begin
myteam =  Team.all.select{|team| team.user_id = self.id}
return myteam
=end
    end

    def myplayoffbracket
        # return users playoff bracket
=begin
myPlayoffBracket = PlayoffBracket.all.select{|pb| pb.user_id = self.id}
return myPlayoffBracket
=end
    end


end
