class LedgerTypesController < ApplicationController
  before_action :set_ledger_type, only: [:show, :edit, :update, :destroy]

  # GET /ledger_types
  # GET /ledger_types.json
  def index
    @ledger_types = LedgerType.all
  end

  # GET /ledger_types/1
  # GET /ledger_types/1.json
  def show
  end

  # GET /ledger_types/new
  def new
    @ledger_type = LedgerType.new
  end

  # GET /ledger_types/1/edit
  def edit
  end

  # POST /ledger_types
  # POST /ledger_types.json
  def create
    @ledger_type = LedgerType.new(ledger_type_params)

    respond_to do |format|
      if @ledger_type.save
        format.html { redirect_to @ledger_type, notice: 'Ledger type was successfully created.' }
        format.json { render :show, status: :created, location: @ledger_type }
      else
        format.html { render :new }
        format.json { render json: @ledger_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ledger_types/1
  # PATCH/PUT /ledger_types/1.json
  def update
    respond_to do |format|
      if @ledger_type.update(ledger_type_params)
        format.html { redirect_to @ledger_type, notice: 'Ledger type was successfully updated.' }
        format.json { render :show, status: :ok, location: @ledger_type }
      else
        format.html { render :edit }
        format.json { render json: @ledger_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ledger_types/1
  # DELETE /ledger_types/1.json
  def destroy
    @ledger_type.destroy
    respond_to do |format|
      format.html { redirect_to ledger_types_url, notice: 'Ledger type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ledger_type
      @ledger_type = LedgerType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ledger_type_params
      params.require(:ledger_type).permit(:name, :created_at, :updated_at)
    end
end
