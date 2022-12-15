class Api::V1::DevelopersController < ApplicationController
  before_action :set_developer, only: %i[show update destroy]

  # GET /developers
  def index
    @developers = Developer.all

    render json: @developers
  end

  # GET /developers/1
  def show
    render json: @developer
  end

  # POST /developers
  def create
    @developer = Developer.new(developer_params)

    if @developer.save
      render json: @developer, status: :created , location: @developer
    else
      render json: @developer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /developers/1
  def update
    if @developer.update(developer_params)
      render json: @developer
    else
      render json: @developer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /developers/1
  def destroy
    render json: @developer if @developer.destroy 
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_developer
    @developer = Developer.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def developer_params
    params.require(:developer).permit(:name, :description, :image, :title, :salary_exp, :rating, :user_id)
  end
end
