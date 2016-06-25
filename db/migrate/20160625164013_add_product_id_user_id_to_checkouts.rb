class AddProductIdUserIdToCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :user_id, :integer
    add_column :checkouts, :product_id, :integer
  end
end
