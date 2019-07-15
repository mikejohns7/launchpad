class NotificationsController < ApplicationController
  def send_global
    n_id = generate_random_id
    ActionCable.server.broadcast 'global_channel',
      toast_id: n_id,
      notification: render_notification(Faker::TvShows::Simpsons.quote, n_id)
  end

  def send_direct
  end

  private

  def render_notification(content, notification_id)
    render(partial: 'notification', locals: { content: content, notification_id: notification_id })
  end

  def generate_random_id
    rand(100000)
  end
end
