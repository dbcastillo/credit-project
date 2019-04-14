class CreditcardsController < ApplicationController

  def index
    @creditcards = Creditcard.all
    render :index
  end

  def show
    @creditcards = Creditcard.find(params[:id])
    render :show
  end

end
