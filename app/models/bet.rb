class Bet < ApplicationRecord
  belongs_to :player
  belongs_to :roulette
end
