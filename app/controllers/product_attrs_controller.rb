class ProductAttrsController < ApplicationController
	def create
    @product = Product.find(params[:product_id])
    @product_attr = @product.product_attrs.create(attr_params)
    redirect_to product_path(@product)
  end

  private
    def attr_params
      params.require(:product_attr).permit(:title, :value)
    end
end
