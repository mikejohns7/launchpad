Clearance.configure do |config|
  config.mailer_sender = "reply@example.com"
  config.rotate_csrf_on_sign_in = true
  config.routes = false
  config.secure_cookie = Rails.env.production?
end
