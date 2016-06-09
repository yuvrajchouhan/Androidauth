class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.boolean :Half_shirt
      t.boolean :Full_shirt
      t.integer :Full_length
      t.integer :Sleeve_length
      t.integer :shoulder
      t.integer :collar
      t.integer :chest
      t.integer :stomach
      t.integer :hip
      t.boolean :Pocket
      t.boolean :side_cut
      t.boolean :side_cover
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
