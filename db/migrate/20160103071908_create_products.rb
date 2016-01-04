class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :seller_id
      t.integer :unit_id
      t.string :name
      t.float :price
      t.string :avatar
      t.integer :status
      t.integer :num

      t.timestamps null: false
    end
  end
end
