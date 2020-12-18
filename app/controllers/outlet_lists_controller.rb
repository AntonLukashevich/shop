class OutletListsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
  end

  def create
    @outlet = Outlet.find(params[:outlet_id])
    @outlet_list = @outlet.outlet_lists.create(list_params)
    redirect_to outlet_path(@outlet)
  end

  private
    def list_params
      params.require(:outlet_list).permit(:count,:outlet_id, :product_id, :price)
    end

end
