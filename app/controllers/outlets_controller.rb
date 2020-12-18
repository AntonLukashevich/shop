class OutletsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
   def index
  	@outlets = Outlet.all
  end

  def show
  	@outlet = Outlet.find(params[:id])
  end

  def new
  	@outlet = Outlet.new
  end

  def edit
  	@outlet = Outlet.find(params[:id])
  end

  def create
	@outlet = Outlet.new(outlet_params)
	
	if @outlet.save
	    redirect_to @outlet
	else
		render 'new'
	end
  end

  def update
    @outlet = Outlet.find(params[:id])

    if @outlet.update(outlet_params)
      redirect_to @outlet
    else
      render 'edit'
    end
  end

  def destroy
    @outlet = Outlet.find(params[:id])
    @outlet.destroy

  	redirect_to outlet_path
end

  private
    def outlet_params
	    params.require(:outlet).permit(:title,:address)
  end
end
