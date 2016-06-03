class ProductsController < ApplicationController
	before_action :authenticate_user!
def index
	@products = Product.all
end

def new
	@product = current_user.products.build		
end

def show
	@product = Product.find(params[:id])
end

def create
	@product = current_user.products.build(product_params)
	@product.save

	redirect_to @product
end

private
def product_params
	params.require(:product).permit(:Name, :Mobile_no, :Address, :image)
	
end
end
