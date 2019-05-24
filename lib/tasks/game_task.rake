desc "roulette simulation"
task roulette_simulation: :environment do
  controller_obj = BetController.new
  controller_obj.game_simulation
end
