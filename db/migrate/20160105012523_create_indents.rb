class CreateIndents < ActiveRecord::Migration
  def change
    create_table :indents do |t|
      t.integer :user_id
      t.integer :send_id
      t.string :status
      t.float :freight

      t.timestamps null: false
    end
  end
end
