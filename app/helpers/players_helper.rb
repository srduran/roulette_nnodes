module PlayersHelper

  def player_bet(id)
    temperature = 25
    player = Player.find(id)
    player_money = player.money
    if temperature > 25
      return (rand(3..7)/100.0)*player_money
    end
    return (rand(8..15)/100.0)*player_money
  end

end
