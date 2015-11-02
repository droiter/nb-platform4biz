class MembersController < ApplicationController
  def index
		@users = User.all
  end
end
