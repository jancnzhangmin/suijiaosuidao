class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :img_file_name
      t.string :img_content_type
      t.string :img_file_size
      t.integer :status
      t.integer :num

      t.timestamps null: false
    end
  end
end
