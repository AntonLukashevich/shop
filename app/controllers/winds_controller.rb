class WindsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
  def index
  	@winds = Product.joins(:category).where(categories: {title: 'wind'})
  end

  def show
  	@product = Product.find(params[:id])
  end
end
