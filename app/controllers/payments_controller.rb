class PaymentsController < ApplicationController
  def new
    @payment = Payment.new
    render :new
  end

  def create
    payment = Payment.new(payment_params)
    creditcard = Creditcard.find_by(id: params[:creditcard_id])

    payment.creditcard = creditcard
    # charge = creditcard.charges.build(charge_params)
    if payment.save
      redirect_to creditcard_path(payment.creditcard)
    else
      render :new
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:amount)
  end
end
