class CartsController < ApplicationController
  include CartsHelper
  before_action :require_login
  before_action :only_current_cart

  def show
    @flowers_in_cart = JoinTableFlowersCart.where(cart_id:current_user.cart.id)
  end
end
