class GameController < ApplicationController
include PlayersHelper
include GameHelper

  def index
    player_hash = {}
    player_id_array.each do |a|
      player_bet_amount(a)
    end
    puts select_color
    #BetJob.perform_now
  end

  def save_game_data
  end

end
