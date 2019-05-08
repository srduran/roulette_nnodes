class BetJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "funcionaas 12312312321"
  end
end
