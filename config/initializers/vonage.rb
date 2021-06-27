if Rails.env.production?
  Vonage.setup do |config|
    config.api_key = ENV['nex-key']
    config.api_secret = ENV['nex-secret']
  end
else

  Vonage.setup do |config|
    config.api_key = Rails.application.credentials.nexmo.key
    config.api_secret = Rails.application.credentials.nexmo.secret
  end
end
