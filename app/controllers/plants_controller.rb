class PlantsController < ApplicationController
  def index
    @plants = Plant.true_records
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    plant = Plant.find(params[:id])

    plant.update({
      name: params[:name],
      height: params[:height],
      flowering: params[:flowering]
      })

    plant.save

    redirect_to "/plants/#{plant.id}"
  end
end