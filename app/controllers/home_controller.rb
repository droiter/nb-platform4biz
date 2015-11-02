class HomeController < ApplicationController
  def index

		if session[:user_id]

			@organizations = Organization.all

			render :dashboard
		end
  end
end
