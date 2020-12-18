class DrumsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
  def index
  	@drums = Product.joins(:category).where(categories: {title: 'drum'})
  end

  def show
  	@product = Product.find(params[:id])
  end
end
