class SupplierListsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
  end

  def create
    @supplier = Supplier.find(params[:supplier_id])
    @outlet_list = @supplier.supplier_lists.create(list_params)
    redirect_to supplier_path(@supplier)
  end

  private
    def list_params
      params.require(:supplier_list).permit(:price,:count,:number_doc, :guarantee,:product_id,:supplier_id)
    end
end
