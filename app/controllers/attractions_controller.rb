class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def new
  end

  def create
    @attraction = Attraction.create(attraction_params)
    redirect_to attractions_path
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
  end
end
