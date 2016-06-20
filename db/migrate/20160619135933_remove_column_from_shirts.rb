class RemoveColumnFromShirts < ActiveRecord::Migration
  def change
  	remove_column :shirts, :Half_shirt, :boolean
  	remove_column :shirts, :Full_shirt, :boolean
  	remove_column :shirts, :Pocket, :boolean
  	remove_column :shirts, :side_cut, :boolean
  	remove_column :shirts, :side_cover, :boolean
  	remove_column :shirts, :Full_length, :integer
  	remove_column :shirts, :Sleeve_length, :integer
  	remove_column :shirts, :shoulder, :integer
  	remove_column :shirts, :collar, :integer
  	remove_column :shirts, :chest, :integer
  	remove_column :shirts, :stomach, :integer
  	remove_column :shirts, :hip, :integer
  	remove_column :shirts, :user_id, :integer
  	remove_column :shirts, :created_at, :datetime
  	remove_column :shirts, :updated_at, :datetime
  end
end
