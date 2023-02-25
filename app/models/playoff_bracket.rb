class PlayoffBracket < ApplicationRecord
    belongs_to :user
    has_many :teams

    def finalsfavorite
        #return team with most wins predicted
    end

end
