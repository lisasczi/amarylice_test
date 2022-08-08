class FlowersController < ApplicationController
  include FlowersHelper
  before_action :save_flowers_in_cart
  before_action :set_flower, only: [:update, :edit, :show, :destroy ]


  def index
    @flowers = Flower.all
    @join_table_flower_cart = JoinTableFlowersCart.new
  end

  def show
    @join_table_flower_cart = JoinTableFlowersCart.new

  end

  def new
    @flower = Flower.new
  end

  def create
    flower = Flower.create(flower_params)
    redirect_to flower_path(flower.id)
    # if @flower.save
    #   redirect_to flowers_path
    # else
    #   render :new
    # end
  end

  def edit
  end

  def update
    @flower.update(flower_params)
    redirect_to flower_path(@flower.id)
  end

  def destroy
    @flower.destroy
    redirect_to root_path
  end

  private

  def set_flower
    @flower = Flower.find(params[:id])
  end

  def flower_params
    params.require(:flower).permit(:name, :description, :price)
  end

end
