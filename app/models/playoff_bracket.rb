class PlayoffBracket < ApplicationRecord
    belongs_to :user
    has_many :teams
    validates :user_id presence: true

    def finalsfavorite
        #return team with most wins predicted
    end

end
