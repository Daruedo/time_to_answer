class MiningTypesController < ApplicationController
  before_action :set_mining_type, only: %i[ show edit update destroy ]

  # GET /mining_types or /mining_types.json
  def index
    @mining_types = MiningType.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /mining_types/1 or /mining_types/1.json
  def show
  end

  # GET /mining_types/new
  def new
    @mining_type = MiningType.new
  end

  # GET /mining_types/1/edit
  def edit
  end

  # POST /mining_types or /mining_types.json
  def create
    @mining_type = MiningType.new(mining_type_params)

    respond_to do |format|
      if @mining_type.save
        format.html { redirect_to mining_type_url(@mining_type), notice: t('messages.mining_type.create') }
        format.json { render :show, status: :created, location: @mining_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mining_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mining_types/1 or /mining_types/1.json
  def update
    respond_to do |format|
      if @mining_type.update(mining_type_params)
        format.html { redirect_to mining_type_url(@mining_type), notice: t('messages.mining_type.update') }
        format.json { render :show, status: :ok, location: @mining_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mining_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mining_types/1 or /mining_types/1.json
  def destroy   
    respond_to do |format|
      if can_destroy?
        @mining_type.destroy
        format.html { redirect_to mining_types_url, notice: t('messages.mining_type.destroy') }
        format.json { head :no_content }
      else
        format.html { redirect_to mining_types_url, alert: 'não é possível apagar, pois tem moedas' }
      end
    end
  end

  def can_destroy?
    !Coin.where(mining_type_id: @mining_type.id).limit(1).present?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mining_type
      @mining_type = MiningType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mining_type_params
      params.require(:mining_type).permit(:description, :acronym)
    end
end
