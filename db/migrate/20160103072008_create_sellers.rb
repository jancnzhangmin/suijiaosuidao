class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :login
      t.string :password_digest
      t.string :name
      t.string :logo
      t.string :address
      t.string :location
      t.string :summary

      t.timestamps null: false
    end
  end
end
