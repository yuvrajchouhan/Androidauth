class PantsController < ApplicationController

def index
@pants = Pant.all
end

def new
@pants = Pant.new
end

def create
	@pant = Pant.new(pant_params)
	if @pant.save
		redirect_to new_shirt_path
	else
		render 'new'
	end
end

private
def pant_params
	params.require(:pant).permit(:Full_length, :Fork, :Waist, :Hip, :Bottom, :Thigh, :Knee_length, :Knee_losing, :plates, :Belt, :short_belt, :side_stich, :bottom_stich, :Pockets, :Back_pocket, :cover, :product_id, :user_id)
	
end
end
