class PhenotypesController < ApplicationController
  before_action :set_phenotype, only: [:show, :update, :destroy]

  # GET /phenotypes
  def index
    @phenotypes = Phenotype.all

    render json: @phenotypes
  end

  # GET /phenotypes/1
  def show
    render json: @phenotype
  end

  # POST /phenotypes
  def create
    @phenotype = Phenotype.new(phenotype_params)

    if @phenotype.save
      render json: @phenotype, status: :created, location: @phenotype
    else
      render json: @phenotype.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /phenotypes/1
  def update
    if @phenotype.update(phenotype_params)
      render json: @phenotype
    else
      render json: @phenotype.errors, status: :unprocessable_entity
    end
  end

  # DELETE /phenotypes/1
  def destroy
    @phenotype.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phenotype
      @phenotype = Phenotype.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def phenotype_params
      params.require(:phenotype).permit(:name)
    end
end
