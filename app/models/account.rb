class Account < ActiveRecord::Base
	has_many	:ledger_accounts
	belongs_to	:account_type
end
