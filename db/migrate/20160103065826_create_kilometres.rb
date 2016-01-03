class CreateKilometres < ActiveRecord::Migration
  def change
    create_table :kilometres do |t|
      t.float :price

      t.timestamps null: false
    end
  end
end
