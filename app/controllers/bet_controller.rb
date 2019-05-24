class BetController < ApplicationController
  include PlayersHelper
  include BetHelper

  def index
      @bets = Bet.all
    #game_simulation
  end

  def save_game_data(player_id, player_bet, player_color, roulette_id, player_gain)
    Bet.create(player_id: player_id, player_bet: player_bet, player_color: player_color, roulette_id: roulette_id, player_gain: player_gain)
  end

  def get_roulette_id(roulette_color)
    if Roulette.all.count == 0
        roulette = Roulette.create(game_number: 1, game_color: roulette_color)
        return roulette.id
    else
      roulette_number = Roulette.all.last.game_number
      roulette = Roulette.create(game_number: (roulette_number+1), game_color: roulette_color)
      return roulette.id
    end
  end

  def game_simulation
    roulette_color = get_color
    roulette_id = get_roulette_id(roulette_color)
    player_id_array.each do |player_id|
      player = Player.find(player_id)
      player_bet = player_bet_amount(player)
      player_color = get_color
      player_gain = gain(player_color,roulette_color,player_bet)
      update_money_earnings(player, player_gain)
      save_game_data(player_id, player_bet, player_color, roulette_id, player_gain)
    end
    puts "paso por game_simulation"
  end

end
