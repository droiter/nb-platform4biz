class RankingController < ApplicationController
  def index
		@organizations = Organization.all
  end
end
