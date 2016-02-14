class Role < ActiveRecord::Base
	has_many :assignments
	has_many :users, through: :assignments
	has_many :organizations, through: :assignments
	belongs_to	:status
end
