class GardenPlantsController < ApplicationController
  def index
    @garden = Garden.find(params[:id])

    @plants = @garden.plants
  end

  def new
    @garden = Garden.find(params[:id])
  end

  def create
    garden = Garden.find(params[:id])

    garden.plants.create!({
      name: params[:name], 
      height: params[:height], 
      flowering: params[:flowering]
    })

    redirect_to "/gardens/#{garden.id}/plants"
  end
end