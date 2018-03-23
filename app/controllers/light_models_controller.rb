class LightModelsController < ApplicationController
  before_action :set_light_model, only: [:show, :update, :destroy]

  # GET /light_models
  def index
    @light_models = LightModel.all

    render json: @light_models
  end

  # GET /light_models/1
  def show
    render json: @light_model
  end

  # POST /light_models
  def create
    @light_model = LightModel.new(light_model_params)

    if @light_model.save
      render json: @light_model, status: :created, location: @light_model
    else
      render json: @light_model.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /light_models/1
  def update
    if @light_model.update(light_model_params)
      render json: @light_model
    else
      render json: @light_model.errors, status: :unprocessable_entity
    end
  end

  # DELETE /light_models/1
  def destroy
    @light_model.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_light_model
      @light_model = LightModel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def light_model_params
      params.require(:light_model).permit(:name, :lumen_efficacy, :type, :watts)
    end
end
