class JoinTableFlowersCart < ApplicationRecord
  belongs_to :cart
  belongs_to :flower

  def self.add_or_create_cart_flower_link(permit_link_params)
  	if JoinTableFlowersCart.find_by(cart_id: permit_link_params[:cart_id], flower_id: permit_link_params[:flower_id]) == nil
  		@new_flower_add = JoinTableFlowersCart.create(flower_id: permit_link_params[:flower_id], cart_id: permit_link_params[:cart_id], quantity: 1)
  	else
  		@new_flower_add = JoinTableFlowersCart.find_by(cart_id: permit_link_params[:cart_id], flower_id: permit_link_params[:flower_id])
  		@new_flower_add.update(quantity: @new_flower_add.quantity + 1)
  	end
  end


end
