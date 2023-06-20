class BirdsController < ApplicationController
  #get/birds
  def index
    render json: Bird.all
  end

  #get/birds/id
  def show
bird = Bird.find_by(id: params[:id])

    if bird
      render json: bird, only:[:name, :species]
    else
      render json: {error: "Bird not found"}, status: 404
    end
  end
end
