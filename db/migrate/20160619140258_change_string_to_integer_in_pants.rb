class ChangeStringToIntegerInPants < ActiveRecord::Migration
  def up
  	change_column :pants, :product_id, :integer
  	change_column :pants, :user_id, :integer
  end

  def down
  	change_column :pants, :product_id, :string
  	change_column :pants, :user_id, :string
  end
end
