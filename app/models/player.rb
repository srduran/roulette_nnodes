class Player < ApplicationRecord
  has_many :bets, :dependent => :destroy
end
