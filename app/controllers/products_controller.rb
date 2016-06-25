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

def edit
	
end

def create
	@product = current_user.products.build(product_params)
	@product.save

	redirect_to do |format|
		if @product.save
			format.html {redirect_to product, notice: 'Product was successfully created'}
			format.json {render :show, status: :created, location: @product }
		else
			format.html {render :new}
			format.json {render	json: @product.errors, status: :unprocessable_entity}
	end
end
end

private
def product_params
	params.require(:product).permit(:Name, :Mobile_no, :Address, :image, :price, :quantity)
	
end
end
