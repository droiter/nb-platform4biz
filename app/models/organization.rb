class Organization < ActiveRecord::Base
	has_many :assignments
	has_many :users, through: :assignments
	has_many :roles, through: :assignments
end
