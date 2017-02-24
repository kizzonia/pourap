Yt.configure do |config|

if Rails.env.development?
else
  config.api_key = ENV.fetch('YOUTUBE_API_KEY')
end
end
