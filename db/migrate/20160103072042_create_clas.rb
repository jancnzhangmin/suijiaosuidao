class CreateClas < ActiveRecord::Migration
  def change
    create_table :clas do |t|
      t.string :claname

      t.timestamps null: false
    end
  end
end
