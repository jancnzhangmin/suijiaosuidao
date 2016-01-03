class CreateOrderdetails < ActiveRecord::Migration
  def change
    create_table :orderdetails do |t|
      t.integer :num

      t.timestamps null: false
    end
  end
end
