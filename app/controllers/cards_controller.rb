class CardsController < ApplicationController
  def index
    if params[:search]
      @cards = Card.search(params[:search]).order(:number).page(params[:page])
    else
      @cards = Card.all.order(:number).page(params[:page])
    end
  end

  def show
    @card = Card.find(params[:id])
  end
end
