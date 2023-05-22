class PaymentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @payments = current_user.payments.order(created_at: :desc)
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = current_user.payments.new(payment_params)

    if @payment.save
      session[:cart_id] = nil
      redirect_to products_path, notice: 'Заказ успешно оплачен.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def payment_params
    params
      .require(:payment)
      .permit(:cart_id, :user_id)
  end
end
