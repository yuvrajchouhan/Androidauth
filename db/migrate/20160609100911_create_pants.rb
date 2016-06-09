class CreatePants < ActiveRecord::Migration
  def change
    create_table :pants do |t|
      t.integer :user_id
      t.integer :Full_length
      t.integer :Waist
      t.integer :Hip
      t.integer :Thigh
      t.integer :Knee_length
      t.integer :Knee_diameter
      t.integer :Folik
      t.boolean :Long_belt
      t.boolean :short_belt
      t.boolean :side_stich
      t.boolean :bottom_stich
      t.boolean :Pockets
      t.boolean :Back_pocket
      t.boolean :cover

      t.timestamps null: false
    end
  end
end
