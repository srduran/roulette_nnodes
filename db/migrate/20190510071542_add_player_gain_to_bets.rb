class AddPlayerGainToBets < ActiveRecord::Migration[5.2]
  def change
    add_column :bets, :player_gain, :integer
  end
end
