class Status < ActiveRecord::Base
	has_many	:users
	has_many	:roles
	has_many	:events
	has_many	:organizations
end
