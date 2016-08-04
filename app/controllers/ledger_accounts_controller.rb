class LedgerAccountsController < ApplicationController
  before_action :set_ledger_account, only: [:show, :edit, :update, :destroy]

  # GET /ledger_accounts
  # GET /ledger_accounts.json
  def index
    @ledger_accounts = LedgerAccount.all
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def ledger_account_params
      params.require(:ledger_account).permit(:ledger_id, :account_id)
    end
end
