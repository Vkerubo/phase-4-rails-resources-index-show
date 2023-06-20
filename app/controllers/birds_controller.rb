class BirdsController < ApplicationController
  #get/birds
  def index
    render json: Bird.all
  end

  #get/birds/id
  def show
    if Bird
      render json: Bird.find_by(id: params[:id])
    else
      render json: {error: "Bird not found"}, status: :not_found
    end
  end
end
