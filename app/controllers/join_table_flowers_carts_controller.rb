class JoinTableFlowersCartsController < ApplicationController

  def new
    @join_table_flower_cart = JoinTableFlowersCart.new

  end

  def create
  @flower_add = JoinTableFlowersCart.add_or_create_cart_flower_link(permit_link_params)
  redirect_to flowers_path
  end

  def destroy
    @flower_delete = JoinTableFlowersCart.find(params[:id])
    @flower_delete.destroy
    redirect_to cart_path
  end


  private

  def permit_link_params
    params.require(:join_table_flowers_cart).permit(:flower_id, :cart_id, :quantity)
  end


end
