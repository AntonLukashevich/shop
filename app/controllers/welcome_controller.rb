class WelcomeController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
  def index
  	@products = Product.last(10)
  end
end
