class PlantSensorsController < ApplicationController
  before_action :set_plant_sensor, only: [:show, :update, :destroy]

  # GET /plant_sensors
  def index
    @plant_sensors = PlantSensor.all

    render json: @plant_sensors
  end

  # GET /plant_sensors/1
  def show
    render json: @plant_sensor
  end

  # POST /plant_sensors
  def create
    @plant_sensor = PlantSensor.new(plant_sensor_params)

    if @plant_sensor.save
      render json: @plant_sensor, status: :created, location: @plant_sensor
    else
      render json: @plant_sensor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plant_sensors/1
  def update
    if @plant_sensor.update(plant_sensor_params)
      render json: @plant_sensor
    else
      render json: @plant_sensor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plant_sensors/1
  def destroy
    @plant_sensor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_sensor
      @plant_sensor = PlantSensor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def plant_sensor_params
      params.require(:plant_sensor).permit(:plant_id, :ph, :hydration)
    end
end
