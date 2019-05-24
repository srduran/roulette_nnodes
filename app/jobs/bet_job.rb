class BetJob < ApplicationJob
  queue_as :default

  def perform(*args)
    controller_obj = BetController.new
    controller_obj.game_simulation
  end
end
