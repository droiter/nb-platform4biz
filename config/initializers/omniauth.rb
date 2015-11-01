Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['NB_GITHUB_KEY'], ENV['NB_GITHUB_SECRET']
end
