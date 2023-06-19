class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    #find a cheese using ID from URL
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
    #send a JSON response using cheese object
    
  end

end
