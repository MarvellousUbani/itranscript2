Vonage.setup do |config|
  config.api_key = Rails.application.credentials.nexmo.key
  config.api_secret = Rails.application.credentials.nexmo.secret
end
