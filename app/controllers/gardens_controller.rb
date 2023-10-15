class GardensController < ApplicationController
  def index
    @gardens = Garden.recently_created
  end

  def show
    @garden = Garden.find(params[:id])
  end

  def new
  end

  def create
    Garden.create!(
      name: params[:name], 
      species: params[:species], 
      watered: params[:watered])

    redirect_to "/gardens"
  end

  def edit
    @garden = Garden.find(params[:id])
  end

  def update
    garden = Garden.find(params[:id])

    garden.update({
      name: params[:name],
      species: params[:species],
      watered: params[:watered]
      })

    garden.save

    redirect_to "/gardens/#{garden.id}"
  end
end