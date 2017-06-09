class OneWorker
  include Sidekiq::Worker

  def perform()
    Import.create(job: 'one')
  end

  Sidekiq::Cron::Job.create(name: 'One worker - every 1min', cron: '*/1 * * * *', class: 'OneWorker')
end
