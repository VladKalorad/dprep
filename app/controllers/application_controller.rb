class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :set_render_cart
  before_action :initialize_cart

  def set_render_cart
    @render_cart = true
  end

  def initialize_cart
      if Cart.find_by(id: session[:cart_id]).nil?
        @cart = Cart.create
        session[:cart_id] = @cart.id
      else
        @cart = Cart.find_by(id: session[:cart_id])
      end
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email,:phone,:city,:street,:flat_number,:house, :password, :current_password) }
  end
end
