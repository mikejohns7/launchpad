class NotificationsController < ApplicationController
  def send_global
    ActionCable.server.broadcast 'global_channel', content: "Hello, ActionCable!"
  end

  def send_direct
  end
end
