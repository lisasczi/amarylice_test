module FlowersHelper

  def save_flowers_in_cart
    if current_user != nil
        @flowers_in_cart = JoinTableFlowersCart.where(cart_id:current_user.cart.id)
    end
  end

end
