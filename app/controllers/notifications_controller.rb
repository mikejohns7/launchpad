class NotificationsController < ApplicationController
  def send_global
    helpers.send_global_notification
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
