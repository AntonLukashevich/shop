class TechnicsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
  def index
  	@technics = Product.joins(:category).where(categories: {title: 'technic'})
  end

  def show
  	@product = Product.find(params[:id])
  end
end
