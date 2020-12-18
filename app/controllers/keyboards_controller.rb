class KeyboardsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
  def index
  	@keyboards = Product.joins(:category).where(categories: {title: 'keyboard'})
  end

  def show
  	@product = Product.find(params[:id])
  end
end
