class Game < ApplicationRecord
    has_many :teams
    has_many :players
end
