# frozen_string_literal: true

class CultivatorsController < OpenReadController
  before_action :set_cultivator, only: %i[show update destroy]

  # GET /cultivators
  def index
    @cultivators = Cultivator.all

    render json: @cultivators
  end

  # GET /cultivators/1
  def show
    render json: @cultivator
  end

  # POST /cultivators
  def create
    @cultivator = current_user.cultivators.build(cultivator_params)

    if @cultivator.save
      render json: @cultivator, status: :created
    else
      render json: @cultivator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cultivators/1
  def update
    if @cultivator.update(cultivator_params)
      render json: @cultivator
    else
      render json: @cultivator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cultivators/1
  def destroy
    @cultivator.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_cultivator
    @cultivator = current_user.cultivators.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def cultivator_params
    params.require(:cultivator).permit(:company, :username, :profile_img, :phone_number)
  end
  private :set_cultivator, :cultivator_params
end
