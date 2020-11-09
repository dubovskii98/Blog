class HardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence do
    (minutely)
  end

  def perform
    Post.recent.update_all(url: nil)
  end

end
