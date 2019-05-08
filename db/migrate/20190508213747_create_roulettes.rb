class CreateRoulettes < ActiveRecord::Migration[5.2]
  def change
    create_table :roulettes do |t|
      t.integer :game_number
      t.string :game_color

      t.timestamps
    end
  end
end
