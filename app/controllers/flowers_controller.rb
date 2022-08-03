class FlowersController < ApplicationController
  before_action :set_flower, only: [:update, :edit, :show, :destroy ]


  def index
    @flower = policy_scope(Flower)
    authorize @flower
    @flowers = Flower.all
  end

  def show
    # @flower= Flower.find(params[:id])
  end

  def new
    authorize @flower
    @flower = Flower.new
  end

  def create
    authorize @flower
    flower = Flower.create(flower_params)
    redirect_to flower_path(flower.id)
  end

  def edit
    authorize @flower
    # @flower= Flower.find(params[:id])
  end

  def update
    authorize @flower
    # @flower = Flower.find(params[:id])
    @flower.update(flower_params)
    redirect_to flower_path(@flower.id)
  end

  def destroy
    authorize @flower
    # @flower= Flower.find(params[:id])
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
