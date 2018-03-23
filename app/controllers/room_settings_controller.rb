class RoomSettingsController < ApplicationController
  before_action :set_room_setting, only: [:show, :update, :destroy]

  # GET /room_settings
  def index
    @room_settings = RoomSetting.all

    render json: @room_settings
  end

  # GET /room_settings/1
  def show
    render json: @room_setting
  end

  # POST /room_settings
  def create
    @room_setting = RoomSetting.new(room_setting_params)

    if @room_setting.save
      render json: @room_setting, status: :created, location: @room_setting
    else
      render json: @room_setting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /room_settings/1
  def update
    if @room_setting.update(room_setting_params)
      render json: @room_setting
    else
      render json: @room_setting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /room_settings/1
  def destroy
    @room_setting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_setting
      @room_setting = RoomSetting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def room_setting_params
      params.require(:room_setting).permit(:room_id, :humidity, :temperature, :air_quality)
    end
end
