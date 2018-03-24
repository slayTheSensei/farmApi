class SensorsController < ApplicationController
  before_action :set_sensor, only: [:show, :update, :destroy]

  # GET /sensors
  def index
    @sensors = Sensor.all

    render json: @sensors
  end

  # GET /sensors/1
  def show
    render json: @sensor
  end

  # POST /sensors
  def create
    # When a sensor is created I want to create all of the attached resources.
    @sensor = Sensor.new(sensor_params)

    if @sensor.save
      render json: @sensor, status: :created, location: @sensor
    else
      render json: @sensor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sensors/1
  def update
    if @sensor.update(sensor_params)
      render json: @sensor
    else
      render json: @sensor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sensors/1
  def destroy
    @sensor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor
      @sensor = Sensor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sensor_params
      params.require(:sensor).permit(:room_id)
    end
end
