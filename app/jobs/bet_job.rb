class BetJob < ApplicationJob
  queue_as :default

  def perform(*args)
    BetController.game_simulation
  end
end
