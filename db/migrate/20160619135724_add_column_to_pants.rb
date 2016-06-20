class AddColumnToPants < ActiveRecord::Migration
  def change
  	add_column :pants, :Full_length, :string
  	add_column :pants, :Fork, :string
  	add_column :pants, :Waist, :string
  	add_column :pants, :Hip, :string
  	add_column :pants, :Bottom, :string
  	add_column :pants, :Thigh, :string
  	add_column :pants, :Knee_length, :string
 	add_column :pants, :Knee_losing, :string
 	add_column :pants, :plates, :boolean
 	add_column :pants, :Belt, :string
 	add_column :pants, :Loop, :string
  	add_column :pants, :Pockets, :string
  	add_column :pants, :Back_pocket, :string
  	add_column :pants, :side_stich, :string
  	add_column :pants, :bottom_stich, :string
  	add_column :pants, :product_id, :string
  	add_column :pants, :user_id, :string
  	add_column :pants, :created_at, :datetime
  	add_column :pants, :updated_at, :datetime
  end
end
