Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379/0' }
end
Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379/0' }
end

# Add redis configuration for server and client side
