class ShirtsController < ApplicationController

	def index
	@shirt  = Shirt.all
	end

def new
	@shirts = Shirt.new
end

def create
	@shirt = Shirt.new(shirt_params)
	if @shirt.save
		redirect_to root_path
	else
		render 'new'
	end
end


private
def shirt_params
params.require(:shirt).permit(:Shirt_size, :shirt_option, :clothing_option, :Full_length, :Sleeve_length, :Cuff, :Shirt_losing, :Shoulder, :neck, :chest, :stomach, :Half_length, :Half_sleeve_length, :Safari_losing, :Half_Shoulder, :Half_Neck, :chest_size, :stomach_size, :pocket, :pocket_cover, :side_stich, :pallo_patti, :one_in_pocket, :double_stich, :v_shoulder, :back_cut, :user_id, :product_id)
end

end
