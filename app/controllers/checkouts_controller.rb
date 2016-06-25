class CheckoutsController < ApplicationController

def index
@checkout = Checkout.all
end

def new
@checkout = Checkout.new
end


def create
	@checkout = Checkout.new(checkout_params)
	if @checkout.save
		redirect_to products_path
	else
		render 'new'
		
	end
end

private
def checkout_params
params.require(:checkout).permit(:Full_name, :mobile_number, :pincode, :Address_type, :landmark, :Address_line)
	
end

end
