class LedgerAccount < ActiveRecord::Base
	belongs_to :ledger
	belongs_to :account
end
