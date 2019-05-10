class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.references :player, foreign_key: true
      t.integer :player_bet
      t.string :player_color
      t.references :roulette, foreign_key: true

      t.timestamps
    end
  end
end
