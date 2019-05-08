module PlayersHelper

  def player_bet_amount(id)
    temperature = 26
    player = Player.find(id)
    player_money = player.money
    puts player.name
    if player_money == 0
      return 0
    elsif player_money < 1000
      update_bet_money(player, player_money)
      return player_money
    elsif temperature > 25
      money_bet = (rand(3..7)/100.0)*player_money
      update_bet_money(player, money_bet)
      return money_bet
    else
      money_bet = (rand(8..15)/100.0)*player_money
      update_bet_money(player, money_bet)
    return money_bet
    end
  end

  def update_bet_money(player, money_bet)
    player.money -= money_bet
    player.save
  end

  def update_money_earnings(player, money_earning)
    player.money + = money_earning
    player.save
  end
  
  def player_id_array
    id_array = []
    Player.all.each do |p|
      id_array.append(p.id)
    end
    return id_array
  end

end
