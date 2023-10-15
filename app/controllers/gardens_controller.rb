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
    Garden.create!(name: params[:name], species: params[:species], watered: params[:watered])
    redirect_to "/gardens"
  end
end