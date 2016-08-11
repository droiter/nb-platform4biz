class Ledger < ActiveRecord::Base
	belongs_to :statement
	belongs_to :ledger_type
end
