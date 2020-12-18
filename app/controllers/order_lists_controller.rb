class OrderListsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	def create
    @order = Order.find(params[:order_id])
    @order_list = @order.order_lists.create(list_params)
    redirect_to order_path(@order)
  end

  private
    def list_params
      params.require(:order_list).permit(:count,:order_id, :product_id)
    end
end
