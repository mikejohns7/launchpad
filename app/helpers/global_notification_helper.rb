module GlobalNotificationHelper
  def send_global_notification(message)
    ActionCable.server.broadcast 'global_channel', content: message
  end
end
