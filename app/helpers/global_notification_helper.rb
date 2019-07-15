module GlobalNotificationHelper

  def send_global_notification
    puts "\n\nMake sure you're escaping any user-generated text that could go in this alert!\n\n"
    n_id = generate_random_id
    ActionCable.server.broadcast 'global_channel',
      toast_id: n_id,
      notification: render_notification(Faker::TvShows::Simpsons.quote, n_id)
  end

  def render_notification(content, notification_id)
    render(partial: 'notifications/notification', locals: { content: content, notification_id: notification_id })
  end

  def generate_random_id
    rand(100000)
  end

end
