class BowedsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
  def index
  	@boweds = Product.joins(:category).where(categories: {title: 'bowed'})
  end

  def show
  	@product = Product.find(params[:id])
  end
end
