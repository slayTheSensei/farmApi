class LumenController < ApplicationController
  before_action :set_luman, only: [:show, :update, :destroy]

  # GET /lumen
  def index
    @lumen = Luman.all

    render json: @lumen
  end

  # GET /lumen/1
  def show
    render json: @luman
  end

  # POST /lumen
  def create
    @luman = Luman.new(luman_params)

    if @luman.save
      render json: @luman, status: :created, location: @luman
    else
      render json: @luman.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lumen/1
  def update
    if @luman.update(luman_params)
      render json: @luman
    else
      render json: @luman.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lumen/1
  def destroy
    @luman.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_luman
      @luman = Luman.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def luman_params
      params.require(:luman).permit(:sensor_id, :value)
    end
end
