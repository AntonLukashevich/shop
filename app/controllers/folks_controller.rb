class FolksController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
  def index
  	@folks = Product.joins(:category).where(categories: {title: 'folk'})
  end

  def show
  	@product = Product.find(params[:id])
  end

end
