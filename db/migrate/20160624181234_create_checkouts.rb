class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :Full_name
      t.string :mobile_number
      t.string :pincode
      t.string :Address_line
      t.string :landmark
      t.string :Address_type
      t.timestamps null: false
    end
  end
end
