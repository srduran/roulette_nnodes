class GameController < ApplicationController
  def index
    BetJob.perform_now
  end
end
