class Account < ActiveRecord::Base
	has_many	:ledger_accounts
end
