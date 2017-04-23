class FeedJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    rake sync:feeds
    # puts "Heello The job is working"
  end
end
