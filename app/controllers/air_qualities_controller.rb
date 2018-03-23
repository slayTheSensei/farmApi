class AirQualitiesController < ApplicationController
  before_action :set_air_quality, only: [:show, :update, :destroy]

  # GET /air_qualities
  def index
    @air_qualities = AirQuality.all

    render json: @air_qualities
  end

  # GET /air_qualities/1
  def show
    render json: @air_quality
  end

  # POST /air_qualities
  def create
    @air_quality = AirQuality.new(air_quality_params)

    if @air_quality.save
      render json: @air_quality, status: :created, location: @air_quality
    else
      render json: @air_quality.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /air_qualities/1
  def update
    if @air_quality.update(air_quality_params)
      render json: @air_quality
    else
      render json: @air_quality.errors, status: :unprocessable_entity
    end
  end

  # DELETE /air_qualities/1
  def destroy
    @air_quality.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air_quality
      @air_quality = AirQuality.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def air_quality_params
      params.require(:air_quality).permit(:sensor_id, :value)
    end
end
