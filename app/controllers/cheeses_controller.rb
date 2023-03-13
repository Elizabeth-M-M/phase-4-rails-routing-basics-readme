class CheesesController < ApplicationController
  def index
    cheeses = Cheese.all
  render json: cheeses
  end
  def most_expensive
    cheeses = Cheese.order(price: :desc).limit(1)
  render json: cheeses
  end
end
