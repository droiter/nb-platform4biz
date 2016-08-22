class LedgerAccountsController < ApplicationController
	before_action :login_required
  before_action :set_ledger_account, only: [:show, :edit, :update, :destroy]
	before_action :set_form, only: [:new, :edit]


  # GET /ledger_accounts
  # GET /ledger_accounts.json
  def index
    @ledger_accounts = LedgerAccount.all

		asset_accounts = Account.where(account_type: 1).pluck(:id)
		@asset_list = LedgerAccount.where('account_id IN (?)', asset_accounts)

		liab_accounts = Account.where(account_type: 2).pluck(:id)
		@liab_list = LedgerAccount.where('account_id IN (?)', liab_accounts)

    equity_accounts = Account.where(account_type: 3).pluck(:id)
    @equity_list = LedgerAccount.where('account_id IN (?)', equity_accounts)

    expense_accounts = Account.where(account_type: 4).pluck(:id)
    @expense_list = LedgerAccount.where('account_id IN (?)', expense_accounts)

    revenue_accounts = Account.where(account_type: 5).pluck(:id)
    @revenue_list = LedgerAccount.where('account_id IN (?)', revenue_accounts)
  end

  # GET /ledger_accounts/1
  # GET /ledger_accounts/1.json
  def show
  end

  # GET /ledger_accounts/new
  def new
    @ledger_account = LedgerAccount.new
  end

  # GET /ledger_accounts/1/edit
  def edit
  end

  # POST /ledger_accounts
  # POST /ledger_accounts.json
  def create
    @ledger_account = LedgerAccount.new(ledger_account_params)

    respond_to do |format|
      if @ledger_account.save
        format.html { redirect_to @ledger_account, notice: 'Ledger account was successfully created.' }
        format.json { render :show, status: :created, location: @ledger_account }
      else
        format.html { render :new }
        format.json { render json: @ledger_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ledger_accounts/1
  # PATCH/PUT /ledger_accounts/1.json
  def update
    respond_to do |format|
      if @ledger_account.update(ledger_account_params)
        format.html { redirect_to @ledger_account, notice: 'Ledger account was successfully updated.' }
        format.json { render :show, status: :ok, location: @ledger_account }
      else
        format.html { render :edit }
        format.json { render json: @ledger_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ledger_accounts/1
  # DELETE /ledger_accounts/1.json
  def destroy
    @ledger_account.destroy
    respond_to do |format|
      format.html { redirect_to ledger_accounts_url, notice: 'Ledger account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ledger_account
      @ledger_account = LedgerAccount.find(params[:id])
    end

		def set_form
			@ledgers = Ledger.all
			@accounts = Account.where(account_type: params[:account_type])
		end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ledger_account_params
      params.require(:ledger_account).permit(:account_type, :ledger_id, :account_id)
    end
end
