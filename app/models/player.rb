class Player < ApplicationRecord
  has_many :bets, :dependent => :destroy
  validates :name, :presence => true, :uniqueness => true
end
