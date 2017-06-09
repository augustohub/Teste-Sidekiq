class OneWorker
  include Sidekiq::Worker

  def perform()
    Import.create(job: 'one')
  end
end
