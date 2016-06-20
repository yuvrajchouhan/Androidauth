class AddColumnFromShirts < ActiveRecord::Migration
  def change
  	add_column :shirts, :Shirt_size, :string
  	add_column :shirts, :shirt_option, :string
  	add_column :shirts, :clothing_option, :string
  	add_column :shirts, :Full_length, :string
  	add_column :shirts, :Sleeve_length, :string
  	add_column :shirts, :Cuff, :string
  	add_column :shirts, :Shirt_losing, :string
 	add_column :shirts, :Shoulder, :string
 	add_column :shirts, :neck, :string
 	add_column :shirts, :chest, :string
 	add_column :shirts, :stomach, :string
 	add_column :shirts,	:Half_length, :string	
    add_column :shirts,	:Half_sleeve_length, :string
    add_column :shirts,	:Safari_losing,	:string
    add_column :shirts,	:Half_Shoulder,	:string
    add_column :shirts,	:Half_Neck, :string
    add_column :shirts,	:chest_size, :string
    add_column :shirts,	:stomach_size, :string
    add_column :shirts, :pocket, :boolean
    add_column :shirts, :pocket_cover, :boolean
    add_column :shirts, :side_stich, :string
    add_column :shirts, :pallo_patti, :string
    add_column :shirts, :one_in_pocket, :boolean
    add_column :shirts,	:double_stich, :boolean
    add_column :shirts, :v_shoulder, :boolean
    add_column :shirts, :back_cut, :boolean
    add_column :shirts, :product_id, :integer
  	add_column :shirts, :user_id, :integer
  	add_column :shirts, :created_at, :datetime
  	add_column :shirts, :updated_at, :datetime

  end
end
