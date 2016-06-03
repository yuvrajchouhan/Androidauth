class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :Name
      t.string :Mobile_no
      t.string :Address

      t.timestamps null: false
    end
  end
end
