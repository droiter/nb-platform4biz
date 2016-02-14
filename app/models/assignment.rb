class Assignment < ActiveRecord::Base
	belongs_to :user
	belongs_to :organization
	belongs_to :role
	belongs_to :status
end
