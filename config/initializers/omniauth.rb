Rails.application.config.middleware.use OmniAuth::Builder do

#	provider :github, ENV['NB_GITHUB_KEY'], ENV['NB_GITHUB_SECRET']
	provider :quickbooks, ENV['NB_QUICKBOOKS_KEY'], ENV['NB_QUICKBOOKS_SECRET']
end
