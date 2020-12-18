class SuppliersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
   def index
  	@suppliers = Supplier.all
  end

  def show
  	@supplier = Supplier.find(params[:id])
  end

  def new
  	@supplier = Supplier.new
  end

  def edit
  	@supplier = Supplier.find(params[:id])
  end

  def create
	@supplier = Supplier.new(supply_params)
	
	if @supplier.save
	    redirect_to @supplier
	else
		render 'new'
	end
  end

  def update
    @supplier = Supplier.find(params[:id])

    if @supplier.update(supply_params)
      redirect_to @supplier
    else
      render 'edit'
    end
  end

  def destroy
    #binding.pry
    @supplier = Supplier.find(params[:id])
    @supplier.destroy

  	redirect_to suppliers_path(@supplier)
end

  private
    def supply_params
	    params.require(:supplier).permit(:title, :address)
  end
end
