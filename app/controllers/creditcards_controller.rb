class CreditcardsController < ApplicationController

  def index
    @creditcards = Creditcard.all
    render :index
  end

  def show
    @creditcard = Creditcard.find(params[:id])
    render :show
  end

  def new
    @creditcard = Creditcard.new
    render :new
  end

  def create
    creditcard = Creditcard.new(creditcard_params)
    creditcard.limit = 1000
    creditcard.apr = 0.35
    if creditcard.save
      redirect_to creditcard_path(creditcard)
    else
      render :new
    end
  end

  def edit
    @creditcard = Creditcard.find(params[:id])
    render :edit
  end

  def update
    @creditcard = Creditcard.find(params[:id])
    @creditcard.update(creditcard_params)

    redirect_to "/creditcards/#{@creditcard.id}"
  end

  private

  def creditcard_params
    params.require(:creditcard).permit(:username, :limit, :apr)
  end
end
