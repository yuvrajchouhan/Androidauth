class PantsController < ApplicationController

def create
	@pant = current_user.pants.build(pant_params)
	@pant.save

end
def new
	@pant = current_user.pants.build
	
end
private
def pant_params
	params.require(:pant).permit(:Full_length, :Waist, :Hip, :Thigh, :Knee_length, :Knee_diameter, :Folik, :Long_belt, :short_belt, :side_stich, :bottom_stich, :Pockets, :Back_pocket, :cover, :product_id, :user_id)
	
end
end
