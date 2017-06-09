class TwoWorker
  include Sidekiq::Worker

  def perform()
    Import.create(job: 'two')
  end
end
