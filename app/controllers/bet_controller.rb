class BetController < ApplicationController
  include PlayersHelper
  include BetHelper

  def index
    roulette_color = get_color
    player_id_array.each do |a|
      player_bet = player_bet_amount(a)
      player_gain = gain(get_color,roulette_color,player_bet)
    end
    #BetJob.perform_now
  end

  def save_game_data
  end

  def game_simulation

  end

end
