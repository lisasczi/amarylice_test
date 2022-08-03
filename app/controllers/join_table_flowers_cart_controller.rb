class JoinTableFlowersCartController < ApplicationController

  private

  def permit_link_params
    params.require(:join_table_flowers_cart).permit(:flower_id, :cart_id, :quantity)
  end

  @flower_add = JoinTableFlowersCart.add_or_create_cart_flower_link(permit_link_params)
    redirect_to flowers_path
end
