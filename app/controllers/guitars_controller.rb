class GuitarsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
  def index
  	@guitars = Product.joins(:category).where(categories: {title: 'guitar'})
  end

  def show
  	@product = Product.find(params[:id])
  end


  def instruments
    @guitars = Product.all.where(type: 'guitar')
  end


end


