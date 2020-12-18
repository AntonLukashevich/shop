class StorehousesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
 def index
    @storehouses = Storehouse.all
  end

  def show
    @storehouse = Storehouse.find(params[:id])
  end

  def new
    @storehouse = Storehouse.new
  end

  def edit
    @storehouse = Storehouse.find(params[:id])
  end

  def create
  @storehouse = Storehouse.new(storehouse_params)
  
  if @storehouse.save
      redirect_to @storehouse
  else
    render 'new'
  end
  end

  def update
    @storehouse = Storehouse.find(params[:id])

    if @storehouse.update(storehouse_params)
      redirect_to @storehouse
    else
      render 'edit'
    end
  end

  def destroy
    @storehouse = Storehouse.find(params[:id])
    @storehouse.destroy

    redirect_to storehouses_path
end

  private
    def storehouse_params
      params.require(:storehouse).permit(:count, :product_id)
  end
end
