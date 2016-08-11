class StatementTypesController < ApplicationController
  before_action :set_statement_type, only: [:show, :edit, :update, :destroy]

  # GET /statement_types
  # GET /statement_types.json
  def index
    @statement_types = StatementType.all
  end

  # GET /statement_types/1
  # GET /statement_types/1.json
  def show
  end

  # GET /statement_types/new
  def new
    @statement_type = StatementType.new
  end

  # GET /statement_types/1/edit
  def edit
  end

  # POST /statement_types
  # POST /statement_types.json
  def create
    @statement_type = StatementType.new(statement_type_params)

    respond_to do |format|
      if @statement_type.save
        format.html { redirect_to @statement_type, notice: 'Statement type was successfully created.' }
        format.json { render :show, status: :created, location: @statement_type }
      else
        format.html { render :new }
        format.json { render json: @statement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statement_types/1
  # PATCH/PUT /statement_types/1.json
  def update
    respond_to do |format|
      if @statement_type.update(statement_type_params)
        format.html { redirect_to @statement_type, notice: 'Statement type was successfully updated.' }
        format.json { render :show, status: :ok, location: @statement_type }
      else
        format.html { render :edit }
        format.json { render json: @statement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statement_types/1
  # DELETE /statement_types/1.json
  def destroy
    @statement_type.destroy
    respond_to do |format|
      format.html { redirect_to statement_types_url, notice: 'Statement type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statement_type
      @statement_type = StatementType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statement_type_params
      params.require(:statement_type).permit(:name, :created_at, :updated_at)
    end
end
