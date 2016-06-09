class AddProductIdToPants < ActiveRecord::Migration
  def change
    add_column :pants, :product_id, :integer
  end
end
