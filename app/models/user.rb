class User < ApplicationRecord
    has_one :playoff_bracket

    def myteam
        #return users favorite team
    end

    def myplayoffbracket
        # return users playoff bracket
    end


end
