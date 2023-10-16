class GardenPlantsController < ApplicationController
  def index
    @garden = Garden.find(params[:id])
  
    if params[:sort] == "alphabetize"
      @plants = @garden.plants.order(:name)  
    else
      @plants = @garden.plants
    end
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

  def alphabetize
    @garden = Garden.find(params[:id])

    @plants = @garden.plants.order("name desc")
  end
end