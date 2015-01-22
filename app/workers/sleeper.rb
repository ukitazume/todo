class Sleeper
  include Sidekiq::Worker
  sidekiq_options queue: :event

  def perform
    sleep 10
    ture
  end
end
