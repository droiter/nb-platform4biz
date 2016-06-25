class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	require 'open-uri'
	require 'json'
	require 'date'
#	require 'net/http'
#	require 'uri'

	protect_from_forgery

	def login_required
		if session[:user_id]
			@current_user = User.find(session[:user_id])
		else
			redirect_to root_path
		end
	end

	helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
