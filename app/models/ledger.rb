class Ledger < ActiveRecord::Base
	has_many	:ledger_accounts
	belongs_to :statement
	belongs_to :ledger_type
end
