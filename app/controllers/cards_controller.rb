class CardsController < ApplicationController
  def index
    @cards = Card.order(:number).page params[:page]
  end

  def show
    @card = Card.find(params[:id])
  end
end
