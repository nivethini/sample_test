class NewsletterJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    puts user.name
    puts user.email
    puts user.login
    # NewsletterJob.set(wait: 15.minutes).perform_later(user)
    NewsletterJob.set(wait_until: Date.tomorrow.noon).perform_later(user)  # Enqueue a job to be performed tomorrow at noon.


  end
end
