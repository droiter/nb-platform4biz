class LedgersController < ApplicationController
  before_action :set_ledger, only: [:show, :edit, :update, :destroy]
	before_action :set_form, only: [:new, :edit]

  # GET /ledgers
  # GET /ledgers.json
  def index
    @ledgers = Ledger.all
  end

  # GET /ledgers/1
  # GET /ledgers/1.json
  def show
  end

  # GET /ledgers/new
  def new
    @ledger = Ledger.new
  end

  # GET /ledgers/1/edit
  def edit
  end

  # POST /ledgers
  # POST /ledgers.json
  def create
    @ledger = Ledger.new(ledger_params)

    respond_to do |format|
      if @ledger.save
        format.html { redirect_to @ledger, notice: 'Ledger was successfully created.' }
        format.json { render :show, status: :created, location: @ledger }
      else
        format.html { render :new }
        format.json { render json: @ledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ledgers/1
  # PATCH/PUT /ledgers/1.json
  def update
    respond_to do |format|
      if @ledger.update(ledger_params)
        format.html { redirect_to @ledger, notice: 'Ledger was successfully updated.' }
        format.json { render :show, status: :ok, location: @ledger }
      else
        format.html { render :edit }
        format.json { render json: @ledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ledgers/1
  # DELETE /ledgers/1.json
  def destroy
    @ledger.destroy
    respond_to do |format|
      format.html { redirect_to ledgers_url, notice: 'Ledger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ledger
      @ledger = Ledger.find(params[:id])
    end

		def set_form
			@statements = Statement.all
			@ledger_types = LedgerType.all
		end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ledger_params
      params.require(:ledger).permit(:statement_id, :ledger_type_id, :account, :amount, :created_at, :updated_at)
    end
end
