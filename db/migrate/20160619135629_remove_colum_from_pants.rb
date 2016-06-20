class RemoveColumFromPants < ActiveRecord::Migration
  def change
  	remove_column :pants, :Waist, :integer
  	remove_column :pants, :Full_length, :integer
  	remove_column :pants, :Hip, :integer
  	remove_column :pants, :Thigh, :integer
  	remove_column :pants, :Knee_length, :integer
  	remove_column :pants, :Folik, :integer
  	remove_column :pants, :Long_belt, :boolean
  	remove_column :pants, :Knee_diameter, :integer
  	remove_column :pants, :side_stich, :boolean
  	remove_column :pants, :short_belt, :boolean
  	remove_column :pants, :side_stich, :boolean
  	remove_column :pants, :bottom_stich, :boolean
  	remove_column :pants, :Pockets, :boolean
  	remove_column :pants, :Back_pocket, :boolean
  	remove_column :pants, :cover, :boolean
  	remove_column :pants, :product_id, :integer
  	remove_column :pants, :user_id, :integer
  	remove_column :pants, :created_at, :datetime
  	remove_column :pants, :updated_at, :datetime
  end
end
