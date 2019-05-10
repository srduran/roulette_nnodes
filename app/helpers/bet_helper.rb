module BetHelper

  def get_color
    random_number = rand(1..100)
    if random_number.between?(1,49)
      return "red"
    elsif random_number.between?(50,98)
      return "black"
    else
      return "green"
    end
  end

  def gain(player_color, roulette_color, player_bet)
    if player_color == roulette_color
      if player_color == "green"
        return player_bet*15
      else
        return player_bet*2
      end
    end
    return 0
  end

  def save_game_data
  end


end
