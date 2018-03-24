class LightingsController < ApplicationController
  before_action :set_lighting, only: [:show, :update, :destroy]

  # GET /lightings
  def index
    @lightings = Lighting.all

    render json: @lightings
  end

  # GET /lightings/1
  def show
    render json: @lighting
  end

  # POST /lightings
  def create
    @lighting = Lighting.new(lighting_params)

    if @lighting.save
      render json: @lighting, status: :created, location: @lighting
    else
      render json: @lighting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lightings/1
  def update
    if @lighting.update(lighting_params)
      render json: @lighting
    else
      render json: @lighting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lightings/1
  def destroy
    @lighting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lighting
      @lighting = Lighting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lighting_params
      params.require(:lighting).permit(:room_id, :light_model_id, :area)
    end
end
