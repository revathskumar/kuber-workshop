class HardWorker
  include Sidekiq::Worker

  def perform(name)
    logger.info "this is from hard worker :: #{name}"
  end
end
