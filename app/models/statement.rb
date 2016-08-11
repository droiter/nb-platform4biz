class Statement < ActiveRecord::Base
	belongs_to :calendar
	belongs_to :statement_type
	has_many :ledgers
end
