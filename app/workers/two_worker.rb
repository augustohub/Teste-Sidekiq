class TwoWorker
  include Sidekiq::Worker

  def perform()
    Import.create(job: 'two')
  end

  Sidekiq::Cron::Job.create(name: 'Two worker - every 2min', cron: '*/2 * * * *', class: 'TwoWorker')
end
