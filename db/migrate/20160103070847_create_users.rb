class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :wechat
      t.string :location
      t.string :tel

      t.timestamps null: false
    end
  end
end
