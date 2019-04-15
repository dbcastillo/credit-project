class ChargesController < ApplicationController
  def new
    @charge = Charge.new
    render :new
  end

  def create
    charge = Charge.new(charge_params)
    charge.outstandingbalance = 0
    creditcard = Creditcard.find_by(id: params[:creditcard_id])

    charge.creditcard = creditcard
    # charge = creditcard.charges.build(charge_params)
    if charge.save
      redirect_to creditcard_path(charge.creditcard)
    else
      render :new
    end
  end

  private

  def charge_params
    params.require(:charge).permit(:amount, :outstandingbalance)
  end
end
