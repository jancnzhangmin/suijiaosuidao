class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :status
      t.float :freight

      t.timestamps null: false
    end
  end
end
