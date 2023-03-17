class SpicesController < ApplicationController
  def index
    spices = Spice.all
    render json: spices
  end

#   def show
#     spices = Spice.find_by(id: params[:id])
#     render json: spices
#   end

  def create
    spices = Spice.create(spice_params)
    render json: spices, status: :created
  end

  def update
    spices = Spice.find(params[:id])
    spices.update(spice_params)
    render json: spices
  end

  def destroy
    spices = Spice.find_by(id: params[:id])
    spices.destroy
  end

  private

  def spice_params
    params.permit(:title, :image, :description, :notes, :rating)
  end
end
