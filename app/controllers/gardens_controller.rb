class GardensController < ApplicationController
  def index
    @gardens = Garden.recently_created
  end

  def show
    @garden = Garden.find(params[:id])
  end
end